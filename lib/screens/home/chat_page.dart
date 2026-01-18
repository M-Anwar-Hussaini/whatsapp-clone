import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/chat_data.dart';
import 'package:whatsapp_clone/widgets/common/custom_card.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CustomCard(chat: chats[index]);
      },
      itemCount: chats.length,
    );
  }
}
