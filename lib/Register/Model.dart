import "package:http/http.dart" as http;
import 'dart:convert';

class ReqService {
  static Future<http.Response> Register(String username,String email,String password)async{
    final response = await http.post(
        Uri.parse('http://10.0.2.2:8080/api/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'username': username,
          'email': email,
          'password': password
        })
    );
    return response;
  }
}