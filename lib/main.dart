import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/pages/home.dart';
import 'package:chat_app/pages/onbording.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: ChatPage(),
    );
  }
}
