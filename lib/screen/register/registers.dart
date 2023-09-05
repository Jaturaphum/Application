import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 44, 44),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    labelText: 'NumberID',
                    prefixIcon: Icon(
                      Icons.numbers,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    labelText: 'Username',
                    prefixIcon: Icon(
                      Icons.people,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                  ),
                  obscureText: true, // ตั้งค่าเป็น true เพื่อซ่อนรหัส
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                  ),
                  obscureText: true, // ตั้งค่าเป็น true เพื่อซ่อนรหัส
                ),
              ],
            ),
          )),
    );
  }
}
