// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2d2f41),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ignore: prefer_const_constructors
              SizedBox(
                height: 120,
              ),
              Text(
                "Welcome,",
                style: TextStyle(fontSize: 56, color: Colors.white),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 30,
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // ignore: prefer_const_constructors
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Color(0xff2d2f41)),
                  ),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ))
            ],
          ),
        ));
  }
}
