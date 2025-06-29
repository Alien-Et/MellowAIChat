import 'package:flutter/material.dart';
import 'package:mellowai/Chat/Setting/Controller.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  Settings({super.key});
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final SettingsController settingsController = Get.put(SettingsController());
  final TextEditingController tokenController = TextEditingController();
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    settingsController.LoadConfig().then((_) {
      tokenController.text = settingsController.token.value;
      setState(() {
        isLoaded = true;
      });
    });
  }

  @override
  void dispose() {
    tokenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width * 0.9;
    final maxHeight = MediaQuery.of(context).size.height * 0.8;

    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
          maxHeight: maxHeight,
        ),
        child: DefaultTabController(
          length: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              const Text('设置', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black54,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(text: '模型'),
                  Tab(text: '显示'),
                  Tab(text: '对话'),
                ],
              ),
              Expanded(
                child: isLoaded
                    ? TabBarView(
                        children: [
                          // 第一个
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                const SizedBox(height: 24),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('模型提供方:', style: TextStyle(fontSize: 16)),
                                ),
                                const SizedBox(height: 8),
                                SizedBox(
                                  width: double.infinity,
                                  child: DropdownButtonFormField<String>(
                                    isExpanded: true,
                                    value: 'deepseek-ai/DeepSeek-V3',
                                    items: const [
                                      DropdownMenuItem(
                                          value: 'deepseek-ai/DeepSeek-V3',
                                          child: Text('deepseek-ai/DeepSeek-V3')),
                                    ],
                                    onChanged: (v) {},
                                    decoration: const InputDecoration(border: OutlineInputBorder()),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('API 密钥', style: TextStyle(fontSize: 16)),
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  controller: tokenController,
                                  obscureText: true,
                                  onChanged: (v) => settingsController.token.value = v,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    suffixIcon: Icon(Icons.visibility),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('模型', style: TextStyle(fontSize: 16)),
                                ),
                                const SizedBox(height: 8),
                                Obx(() => DropdownButtonFormField<String>(
                                      isExpanded: true,
                                      value: settingsController.model.value.isEmpty ? null : settingsController.model.value,
                                      items: const [
                                        DropdownMenuItem(
                                            value: 'deepseek-ai/DeepSeek-V3',
                                            child: Text('deepseek-ai/DeepSeek-V3')),
                                      ],
                                      onChanged: (v) => settingsController.model.value = v ?? '',
                                      decoration: const InputDecoration(border: OutlineInputBorder()),
                                    )),
                                const SizedBox(height: 24),
                              ],
                            ),
                          ),
                          // 第二个
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [],
                            ),
                          ),
                          // 第三个
                          SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [],
                            ),
                          ),
                        ],
                      )
                    : const Center(child: CircularProgressIndicator()),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('取消'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () async {
                        settingsController.token.value = tokenController.text;
                        await settingsController.SaveConfig();
                        Navigator.of(context).pop();
                      },
                      child: const Text('保存'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}