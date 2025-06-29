import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'Model.dart';

class ChatController extends GetxController {
  var ask = TextEditingController();
  var messages = <ChatMessage>[].obs;
}
