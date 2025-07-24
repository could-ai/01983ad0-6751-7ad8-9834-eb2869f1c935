import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Your Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Status: Available',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement avatar selection
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Avatar selection not implemented yet.')),
                );
              },
              child: const Text('Change Avatar'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement profile editing
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Profile editing not implemented yet.')),
                );
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
