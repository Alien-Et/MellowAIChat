import 'package:flutter/material.dart';
import 'package:mellowai/Login/Login.dart';
import 'package:get/get.dart';
import 'package:mellowai/Register/Register.dart';
import 'Chat/Chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: ()=> Login()),
        GetPage(name: '/signup', page: ()=>RegisterPage()),
        GetPage(name: '/chat', page: ()=> ChatPage())
      ],
    );

  }
}
