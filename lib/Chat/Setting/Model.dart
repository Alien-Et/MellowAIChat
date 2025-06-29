import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Controller.dart';

class ModelInfo {
  final String id;
  final String object;
  final int created;
  final String ownedBy;
  ModelInfo({required this.id, required this.object, required this.created, required this.ownedBy});

  factory ModelInfo.fromJson(Map<String, dynamic> json) {
    return ModelInfo(
      id: json['id'] ?? '',
      object: json['object'] ?? '',
      created: json['created'] ?? 0,
      ownedBy: json['owned_by'] ?? '',
    );
  }
}

class SettingsModel extends GetxController {
  var models = <ModelInfo>[].obs;
  var loading = false.obs;
  var error = ''.obs;

  Future<void> fetchModels(String token) async {
    loading.value = true;
    error.value = '';
    try {
      final response = await http.get(
        Uri.parse('https://api.siliconflow.cn/v1/models'),
        headers: {'Authorization': 'Bearer $token'},
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<ModelInfo> list = (data['data'] as List)
            .map((e) => ModelInfo.fromJson(e))
            .toList();
        models.assignAll(list);
      } else {
        error.value = '请求失败: ${response.statusCode}';
      }
    } catch (e) {
      error.value = '请求异常: $e';
    } finally {
      loading.value = false;
    }
  }
}
