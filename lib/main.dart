import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_1/presetation/screens/welcome_scree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // Status bar color
    ));
    return MaterialApp(
      title: 'Task_1 App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
