import 'package:flutter/material.dart';
import 'package:chat_app/widgets/app_drawer.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: 10, // Placeholder for chat items
        itemBuilder: (context, index) {
          return ListTile(
            leading: Hero(
              tag: 'avatar-$index',
              child: CircleAvatar(
                child: Text('U$index'),
              ),
            ),
            title: Text('User $index'),
            subtitle: Text('Last message from User $index'),
            trailing: index % 3 == 0
                ? Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                : null,
            onTap: () {
              Navigator.pushNamed(
                context,
                '/conversation',
                arguments: {'userName': 'User $index', 'avatarTag': 'avatar-$index'},
              );
            },
          );
        },
      ),
    );
  }
}
