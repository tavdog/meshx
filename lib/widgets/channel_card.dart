import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/mesh_channel.dart';
import '../models/text_message.dart';
import '../screens/chat.dart';

class ChannelCard extends StatelessWidget {
  const ChannelCard({
    super.key,
    required MeshChannel channel,
    required TextMessage? lastMessage,
    required String? lastMessageShortName,
    required int index,
  })  : _index = index,
        _lastMessageShortName = lastMessageShortName,
        _lastMessage = lastMessage,
        _channel = channel;

  final MeshChannel _channel;
  final TextMessage? _lastMessage;
  final String? _lastMessageShortName;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<ChatScreen>(
            builder: (ctx) => ChatScreen(channel: _index),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          leading: Text(
            _index.toString(),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_channel.name),
              if (_lastMessage != null)
                Text(
                  '${_lastMessageShortName ?? ''}: ${_lastMessage.text}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                )
              else
                const Text('No messages'),
            ],
          ),
          trailing: (_lastMessage != null)
              ? Text(
                  DateFormat.yMd().add_Hm().format(_lastMessage.time),
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}