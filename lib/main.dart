import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/repository/sqflite.dart';
import 'providers/services/channel_service.dart';
import 'providers/services/node_service.dart';
import 'providers/services/radio_config_downloader_service.dart';
import 'providers/services/text_message_receiver_service.dart';
import 'screens/radio_config.dart';
import 'screens/tab_parent.dart';
import 'theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _initForegroundTask();
    FlutterForegroundTask.startService(
        notificationTitle: 'Meshtastic', notificationText: 'Tap to view');
  }

  @override
  Widget build(BuildContext context) {
    return WithForegroundTask(
      child: _EagerInitialization(
        child: SafeArea(
          child: MaterialApp(
            title: 'Meshtastic',
            theme: theme,
            darkTheme: darkTheme,
            initialRoute: '/',
            routes: {
              '/': (context) => const TabParent(),
              '/config': (context) => const RadioConfigScreen(),
            },
          ),
        ),
      ),
    );
  }
}

class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // make sure database is done initialising before
    // running app
    final sqflite = ref.watch(sqfliteProvider);
    if (sqflite.isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else {
      // make sure these providers are ready to accept packets
      ref.watch(textMessageReceiverServiceProvider);
      ref.watch(channelServiceProvider);
      ref.watch(nodeServiceProvider);
      ref.watch(radioConfigDownloaderServiceProvider);
      return child;
    }
  }
}

void _initForegroundTask() {
  FlutterForegroundTask.init(
    androidNotificationOptions: AndroidNotificationOptions(
      channelId: 'foreground_service',
      channelName: 'Foreground Service Notification',
      channelDescription:
          'This notification appears when the foreground service is running.',
      channelImportance: NotificationChannelImportance.LOW,
      priority: NotificationPriority.LOW,
      iconData: const NotificationIconData(
        resType: ResourceType.mipmap,
        resPrefix: ResourcePrefix.ic,
        name: 'launcher',
      ),
    ),
    iosNotificationOptions:
        const IOSNotificationOptions(showNotification: false),
    foregroundTaskOptions: const ForegroundTaskOptions(),
  );
}