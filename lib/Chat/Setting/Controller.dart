import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SettingsTabController extends GetxController {
  var tabIndex = 0.obs;

  void changeTab(int index) {
    tabIndex.value = index;
  }
}

class SettingsController extends GetxController {
  var token = ''.obs;
  var model = ''.obs;
  var contextLimit = 10.obs;
  var locale = const Locale('zh', 'CN').obs;

  Future<void> LoadConfig() async {
    final pref = await SharedPreferences.getInstance();
    token.value = pref.getString('token') ?? '';
    model.value = pref.getString('model') ?? '';
    contextLimit.value = pref.getInt('contextLimit') ?? 10;
    final langCode = pref.getString('locale_lang') ?? 'zh';
    final countryCode = pref.getString('locale_country') ?? 'CN';
    locale.value = Locale(langCode, countryCode);
  }

  Future<void> SaveConfig() async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('token', token.value);
    await pref.setString('model', model.value);
    await pref.setInt('contextLimit', contextLimit.value);
    await pref.setString('locale_lang', locale.value.languageCode);
    await pref.setString('locale_country', locale.value.countryCode ?? '');
  }
}