import 'package:flutter/material.dart';
import 'package:chat_app/widgets/chat_bubble.dart';

class ConversationScreen extends StatelessWidget {
  const ConversationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final userName = args['userName']!;
    final avatarTag = args['avatarTag']!;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Hero(
              tag: avatarTag,
              child: CircleAvatar(
                child: Text(userName[0]),
              ),
            ),
            const SizedBox(width: 10),
            Text(userName),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: 20, // Placeholder for messages
              itemBuilder: (context, index) {
                final isMe = index % 2 == 0; // Simulate messages from current user and others
                return ChatBubble(
                  message: 'This is message number $index',
                  isMe: isMe,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                FloatingActionButton(
                  onPressed: () {
                    // TODO: Implement send message functionality
                  },
                  mini: true,
                  child: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
