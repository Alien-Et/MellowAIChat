import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Menu/Menu.dart' as menu;
import 'Controller.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final menu.MenuController menuController = Get.put(menu.MenuController());
  final ChatController chatController = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F8FA),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87),
          onPressed: () => menuController.showMenu(context),
        ),
        title: const Text(
          'Deepseek-R1',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.black54),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              children: [
                const SizedBox(height: 24),
                 Text(
                  'how_can_i_help'.tr,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF23233C),
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 28),
                _buildCard(
                  title: 'brainstorm_names'.tr,
                  subtitle: 'brainstorm_names_sub'.tr,
                ),
                _buildCard(
                  title: 'suggest_codenames'.tr,
                  subtitle: 'suggest_codenames_sub'.tr,
                ),
                _buildCard(
                  title: 'write_sql'.tr,
                  subtitle: 'write_sql_sub'.tr,
                ),
                _buildCard(
                  title: 'explain_popcorn'.tr,
                  subtitle: 'explain_popcorn_sub'.tr,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(28),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: chatController.ask,
                        decoration: InputDecoration(
                          hintText: 'ask_anything'.tr,
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Material(
                    color: const Color(0xFF7C4DFF),
                    shape: const CircleBorder(),
                    elevation: 4,
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Icon(Icons.send, color: Colors.white, size: 26),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard({required String title, required String subtitle}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(4),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Color(0xFF23233C)),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            subtitle,
            style: const TextStyle(fontSize: 14, color: Color(0xFF7B7BA5)),
          ),
        ),
        trailing: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF1EDFD),
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(8),
          child: const Icon(Icons.arrow_forward_ios, color: Color(0xFF7C4DFF), size: 18),
        ),
        onTap: () {},
      ),
    );
  }
}
