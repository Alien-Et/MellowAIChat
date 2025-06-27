import 'package:flutter/material.dart';
import 'Model.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final email = TextEditingController();
  final passwd = TextEditingController();
  var isLoading = false.obs;

  Future<void> login() async {
    isLoading.value = true;
    final response = await ReqService.login(email.text, passwd.text);
    if (response.statusCode == 200) {
      isLoading.value = false;
    } else {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    email.dispose();
    passwd.dispose();
    super.onClose();
  }
}