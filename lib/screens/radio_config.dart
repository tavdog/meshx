import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../models/radio_connector_state.dart';
import '../protobufs/generated/meshtastic/config.pb.dart';
import '../providers/ble/radio_connector.dart';
import '../providers/services/radio_config_service.dart';

class RadioConfigScreen extends ConsumerStatefulWidget {
  const RadioConfigScreen({super.key});

  @override
  ConsumerState<RadioConfigScreen> createState() => _RadioConfigScreenState();
}

class _RadioConfigScreenState extends ConsumerState<RadioConfigScreen> {
  @override
  Widget build(BuildContext context) {
    final radioConfig = ref.watch(radioConfigServiceProvider);
    final radioConnectorState = ref.watch(radioConnectorProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('${radioConfig.longName} ⚙️'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: radioConnectorState is Connected
                ? Icon(
                    Icons.cloud_done_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  )
                : Icon(
                    Icons.cloud_off,
                    color: Theme.of(context).colorScheme.error,
                  ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Column(
                children: [
                  Card(
                    child: ListTile(
                      style: ListTileStyle.list,
                      onTap: () {
                        context.push('/channelQrScanner');
                      },
                      title: const Text('Channels (Scan QR)'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: DropdownButtonFormField(
                      value: Config_LoRaConfig_RegionCode.values
                          .indexOf(radioConfig.region),
                      items: [
                        for (final region
                            in Config_LoRaConfig_RegionCode.values)
                          DropdownMenuItem(
                            value: region.value,
                            child: Text(region.name),
                          ),
                      ],
                      onChanged: (value) {
                        ref.read(radioConfigServiceProvider.notifier).setRegion(
                              Config_LoRaConfig_RegionCode.values[value!],
                            );
                      },
                      decoration: const InputDecoration(label: Text('Region')),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      title: const Text('LoRa'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      title: const Text('User'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      title: const Text('Bluetooth'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      title: const Text('Device'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      title: const Text('Display'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      title: const Text('Network'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      title: const Text('Position'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () {},
                      title: const Text('Power'),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton.icon(
                    onPressed: null,
                    label: const Text('Power Off'),
                    icon: const Icon(Icons.power_settings_new_rounded),
                  ),
                  OutlinedButton.icon(
                    onPressed: null,
                    label: const Text('Reboot'),
                    icon: const Icon(Icons.restart_alt),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
