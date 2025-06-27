import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailct = TextEditingController();
  final TextEditingController passwdct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9E9F6),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5B5B8C),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Enter to continue',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF7B7BA5),
                  ),
                ),
                const SizedBox(height: 32),
                TextField(
                  controller: emailct,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x80F6F6F6),
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: Color(0xFFB8B8D1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: passwdct,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0x80F6F6F6),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color(0xFFB8B8D1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5B5B8C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 4,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Enter',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget the password?',
                      style: TextStyle(
                        color: Color(0xFFB0B0D0),
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),


                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'IS NO ACCOUNT? ',
                      style: TextStyle(
                        color: Color(0xFFB0B0D0),
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Color(0xFF5B5B8C),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
