import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chat_app/providers/theme_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final themeNotifier = ref.read(themeProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Dark Mode', style: TextStyle(fontSize: 18)),
                Switch(
                  value: themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    themeNotifier.toggleTheme();
                  },
                ),
              ],
            ),
            // Placeholder for color picker
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement color picker functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Color picker not implemented yet.')),
                );
              },
              child: const Text('Choose Accent Color'),
            ),
          ],
        ),
      ),
    );
  }
}
