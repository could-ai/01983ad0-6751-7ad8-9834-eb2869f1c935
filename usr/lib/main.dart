import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:chat_app/screens/chat_list_screen.dart';
import 'package:chat_app/screens/conversation_screen.dart';
import 'package:chat_app/screens/settings_screen.dart';
import 'package:chat_app/screens/profile_screen.dart';
import 'package:chat_app/providers/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),
      ),
      themeMode: themeMode,
      initialRoute: '/',
      routes: {
        '/': (context) => const ChatListScreen(),
        '/conversation': (context) => const ConversationScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
