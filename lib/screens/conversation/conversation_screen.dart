import 'package:flutter/material.dart';
import 'package:whatsapp_clone/extensions/context_extension.dart';
import 'package:whatsapp_clone/models/chat/chat_model.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key, required this.chat});

  final ChatModel chat;

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  ChatModel get chat => widget.chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(context));
  }

  // The screen app bar
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: () {},
        leading: CircleAvatar(child: Icon(chat.icon)),
        title: Text(
          chat.name,
          style: TextStyle(
            color: context.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Last seen today at 12:20 pm',
          style: TextStyle(color: context.onPrimary),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
        IconButton(onPressed: () {}, icon: Icon(Icons.call)),
        PopupMenuButton<String>(
          itemBuilder: (context) {
            final popUps = [
              'View contact',
              'Media, Links & Docs',
              'WhatsApp web',
              'Search',
              'Mute Notification',
              'Wallpaper',
            ];
            return [
              for (final i in popUps) PopupMenuItem(value: i, child: Text(i)),
            ];
          },
        ),
      ],
    );
  }
}
