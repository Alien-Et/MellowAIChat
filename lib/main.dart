import 'package:flutter/material.dart';
import 'package:mellowai/Login/Login.dart';
import 'package:get/get.dart';
import 'package:mellowai/Register/Register.dart';
import 'Chat/Chat.dart';
import 'i18n.dart';
import 'Chat/Setting/Controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settingsController = Get.put(SettingsController());
  await settingsController.LoadConfig();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsController = Get.find<SettingsController>();
    return Obx(() => GetMaterialApp(
      translations: AppTranslations(),
      locale: settingsController.locale.value,
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/login', page: ()=> Login()),
        GetPage(name: '/signup', page: ()=>RegisterPage()),
        GetPage(name: '/chat', page: ()=> ChatPage())
      ],
    ));
  }
}
