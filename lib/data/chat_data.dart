import 'package:whatsapp_clone/models/chat/chat_model.dart';

final List<ChatModel> chats = [
  ChatModel(
    name: 'Anwar Hussaini',
    currentMessage: 'Hey, are you working on Flutter today?',
    time: '09:15 AM',
  ),
  ChatModel(
    name: 'Flutter Devs',
    currentMessage: 'Bloc vs Riverpod discussion started',
    time: '08:50 AM',
    isGroup: true,
  ),
  ChatModel(
    name: 'John Doe',
    currentMessage: 'Can you review my PR?',
    time: 'Yesterday',
  ),
  ChatModel(
    name: 'UI/UX Team',
    currentMessage: 'New design mockups uploaded',
    time: 'Yesterday',
    isGroup: true,
  ),
  ChatModel(
    name: 'Sarah Parker',
    currentMessage: 'Thanks! That helped a lot 😊',
    time: 'Mon',
  ),
  ChatModel(
    name: 'Backend Squad',
    currentMessage: 'API deployment completed',
    time: 'Mon',
    isGroup: true,
  ),
  ChatModel(
    name: 'Michael Scott',
    currentMessage: 'Let’s have a meeting tomorrow',
    time: 'Sun',
  ),
  ChatModel(
    name: 'Startup Founders',
    currentMessage: 'Pitch deck v2 is ready',
    time: 'Sun',
    isGroup: true,
  ),
  ChatModel(
    name: 'Emma Watson',
    currentMessage: 'See you at the conference!',
    time: 'Sat',
  ),
  ChatModel(
    name: 'Open Source Contributors',
    currentMessage: 'Issue #245 has been fixed',
    time: 'Sat',
    isGroup: true,
  ),
];
