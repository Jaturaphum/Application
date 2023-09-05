import 'package:app_ku/screen/btt/btt_login.dart';
import 'package:app_ku/screen/register/registers.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 44, 44),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'BETA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // ปรับขนาดตามที่ต้องการ
                  fontWeight:
                      FontWeight.bold, // ปรับลักษณะตัวอักษรตามที่ต้องการ
                ),
              ),
              SizedBox(height: 20),
              Image(
                image: AssetImage('assets/CPE.png'),
                width: 250,
                height: 240,
              ),
              // ช่องพิมพ์ชื่อผู้ใช้
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
                  border: myinputborder(),
                  enabledBorder: myinputborder(),
                  focusedBorder: myfocusborder(),
                ),
              ),
              SizedBox(height: 20), // เพิ่มระยะห่าง
              // ช่องพิมพ์รหัสผ่าน
              TextField(
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255)),
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  enabledBorder: myinputborder(),
                  focusedBorder: myfocusborder(),
                ),
                obscureText: true, // ตั้งค่าเป็น true เพื่อซ่อนรหัส
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ]),
              ),
              SizedBox(height: 10),

              MyButton(),

              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Text(
                    'Or register to new',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Now a member?",
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      "Register now",
                      style: TextStyle(color: Color.fromARGB(255, 6, 120, 196)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 255, 255, 255),
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 58, 197, 3),
          width: 3,
        ));
  }
}
