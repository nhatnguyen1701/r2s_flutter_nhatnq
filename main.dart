import 'package:flutter/material.dart';
import 'package:flutter_demo/habit_project_app/settings/view/settings_screen.dart';
import 'package:provider/provider.dart';

import 'app.dart'; // chứa ThemeProvider
// hoặc đường dẫn đến SettingsScreen

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habit App',
      themeMode: themeProvider.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const SettingsScreen(),
    );
  }
}
