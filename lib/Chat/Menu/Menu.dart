import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mellowai/Chat/Setting/Settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuController extends GetxController {

  void showMenu(BuildContext context) {
    Get.bottomSheet(
      const MenuView(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('menus_title'.tr, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text('settings'.tr),
            onTap: () {
              Navigator.of(context).pop();
              Future.delayed(const Duration(milliseconds: 100), () {
                showDialog(
                  context: context,
                  builder: (context) => Settings(),
                );
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: Text('prompt'.tr),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: Text('sign_out'.tr),
            onTap: () async {
              Navigator.of(context).pop();
              final prefs = await SharedPreferences.getInstance();
              await prefs.remove('token');
              await prefs.remove('model');
              await prefs.remove('contextLimit');
              Get.offAllNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}