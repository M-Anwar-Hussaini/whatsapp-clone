import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp_clone/extensions/context_extension.dart';
import 'package:whatsapp_clone/models/chat/chat_model.dart';
import 'package:whatsapp_clone/router/route_names.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.chat});
  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.push(RouteNames.conversation, extra: chat);
      },
      leading: CircleAvatar(
        backgroundColor: context.primary.withValues(alpha: 0.5),
        child: Icon(chat.icon, color: context.onPrimary),
      ),
      title: Text(
        chat.name,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all, size: 16),
          const SizedBox(width: 4),
          Text(chat.currentMessage, style: TextStyle(fontSize: 13)),
        ],
      ),
      trailing: Text('18:20'),
    );
  }
}
