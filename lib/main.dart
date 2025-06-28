import 'package:flutter/material.dart';
import 'package:mellowai/Login/Login.dart';
import 'package:get/get.dart';
import 'Chat/Chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/chat',
      getPages: [
        GetPage(name: '/login', page: ()=> Login()),
        GetPage(name: '/chat', page: ()=> ChatPage())
      ],
    );

  }
}
