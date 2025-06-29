import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsTabController extends GetxController {
  var tabIndex = 0.obs;

  void changeTab(int index) {
    tabIndex.value = index;
  }
}

class SettingsController extends GetxController {
  var token = ''.obs;
  var model = ''.obs;

  Future<void> LoadConfig() async {
    final pref = await SharedPreferences.getInstance();
    token.value = pref.getString('token') ?? '';
    model.value = pref.getString('model') ?? '';
  }

  Future<void> SaveConfig() async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('token', token.value);
    await pref.setString('model', model.value);
    print(pref);
  }
}