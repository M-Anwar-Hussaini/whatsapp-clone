import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/home/home_floating_action_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('Camera'),
          Text('Chats'),
          Text('Updates'),
          Text('Calls'),
        ],
      ),
      floatingActionButton: HomeFloatingActionButton(index: _controller.index),
    );
  }

  // Screen's app bar
  AppBar _buildAppBar() {
    return AppBar(
      title: Text('WatsApp'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        _buildPopupButton(),
      ],
      bottom: TabBar(
        controller: _controller,
        tabs: [
          Tab(icon: Icon(Icons.photo_camera)),
          Tab(text: 'CHATS'),
          Tab(text: 'UPDATES'),
          Tab(text: 'CALLS'),
        ],
      ),
    );
  }

  // Popup menu button
  PopupMenuButton _buildPopupButton() {
    const titles = [
      'New group',
      'New broadcast',
      'WhatsApp web',
      'Starred messages',
      'Settings',
    ];
    return PopupMenuButton<String>(
      onSelected: (value) {
        log(value);
      },
      itemBuilder: (context) => [
        for (final title in titles)
          PopupMenuItem(value: title, child: Text(title)),
      ],
    );
  }
}
