import 'package:flutter/material.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: index,
      children: [
        const SizedBox.shrink(),
        _buildChatButton(),
        const SizedBox.shrink(),
        const SizedBox.shrink(),
      ],
    );
  }

  // Build floating action button
  FloatingActionButton _buildChatButton() {
    return FloatingActionButton(onPressed: () {}, child: Icon(Icons.chat));
  }
}
