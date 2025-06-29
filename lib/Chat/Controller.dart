import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ChatMessage {
  final String role;
  final String content;
  ChatMessage({required this.role, required this.content});
}

class ChatController extends GetxController {
  var ask = TextEditingController();
  var messages = <ChatMessage>[].obs;
}
