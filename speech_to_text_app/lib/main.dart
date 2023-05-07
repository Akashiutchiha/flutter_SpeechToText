import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:speech_to_text_app/home_screen.dart';
import 'package:speech_to_text_app/speech_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const SpeechScreen(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: "Speech to Text",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
