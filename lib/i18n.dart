import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      // Register
      'register': 'Register',
      'name': 'Name',
      'email': 'E-mail',
      'password': 'Password',
      'confirm_password': 'Confirm Password',
      'subscribe': 'Subscribe',
      'do_you_have_account': 'Do you have an account? ',
      'log_in': 'Log in',
      // Login
      'welcome': 'Welcome',
      'login_to_continue': 'Login to continue',
      'login': 'Login',
      'forget_password': 'Forget the password?',
      'is_no_account': 'IS NO ACCOUNT? ',
      'sign_up': 'Sign up',
      // Chat
      'how_can_i_help': 'How can I help you my friend?',
      'brainstorm_names': 'Brainstorm names',
      'brainstorm_names_sub': 'for my fantasy football team with a frog theme',
      'suggest_codenames': 'Suggest some codenames',
      'suggest_codenames_sub': 'for a project introducing flexible work arrangements',
      'write_sql': 'Write a SQL query',
      'write_sql_sub': 'that adds a "status" column to an "orders" table',
      'explain_popcorn': 'Explain why popcorn pops',
      'explain_popcorn_sub': 'to a kid who loves watching it in the microwave',
      'ask_anything': 'Ask me anything...',
      // Settings
      'settings': 'Settings',
      'api_url': 'API URL',
      'api_url_hint': 'e.g. https://api.siliconflow.cn/v1',
      'token': 'Token',
      'token_hint': 'Please enter API Token',
      'save': 'Save',
      // Menu
      'menus_title': 'Menus',
      'language': 'Language',
      'sign_out': 'Sign Out',
    },
    'zh_CN': {
      // Register
      'register': '注册',
      'name': '姓名',
      'email': '邮箱',
      'password': '密码',
      'confirm_password': '确认密码',
      'subscribe': '注册',
      'do_you_have_account': '已有账号？',
      'log_in': '登录',
      // Login
      'welcome': '欢迎',
      'login_to_continue': '登录以继续',
      'login': '登录',
      'forget_password': '忘记密码？',
      'is_no_account': '没有账号？',
      'sign_up': '注册',
      // Chat
      'how_can_i_help': '有什么可以帮您？',
      'brainstorm_names': '头脑风暴名字',
      'brainstorm_names_sub': '为我的青蛙主题梦幻足球队起名',
      'suggest_codenames': '建议项目代号',
      'suggest_codenames_sub': '为弹性工作制项目建议代号',
      'write_sql': '写一个SQL语句',
      'write_sql_sub': '为orders表添加status字段',
      'explain_popcorn': '解释爆米花为什么会爆',
      'explain_popcorn_sub': '给喜欢看微波炉爆米花的小孩解释',
      'ask_anything': '问我任何问题...',
      // Settings
      'settings': '设置',
      'api_url': '通用API地址',
      'api_url_hint': '如：https://api.siliconflow.cn/v1',
      'token': 'Token密钥',
      'token_hint': '请输入API Token',
      'save': '保存',
      // Menu
      'menus_title': '菜单',
      'language': '语言',
      'sign_out': '退出登录',
    },
  };
}