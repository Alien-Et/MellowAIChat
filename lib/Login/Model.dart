import "package:http/http.dart" as http;
import 'dart:convert';

class ReqService {
  static Future<http.Response> login(String email,String password)async{
    final response = await http.post(
        Uri.parse('http://10.0.2.2:8080/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email,
          'password': password
        })
    );
    return response;
  }
}