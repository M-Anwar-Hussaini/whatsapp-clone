import 'package:flutter/material.dart';
import 'package:whatsapp_clone/extensions/context_extension.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: context.primary.withValues(alpha: 0.5),
        child: Icon(Icons.groups, color: context.onPrimary),
      ),
      title: Text(
        'Dev Stack',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.done_all, size: 16),
          const SizedBox(width: 4),
          Text('Hi Dev Stack', style: TextStyle(fontSize: 13)),
        ],
      ),
      trailing: Text('18:20'),
      onTap: () {},
    );
  }
}
