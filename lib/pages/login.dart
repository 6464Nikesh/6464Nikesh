// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:testing_app/Models/LoginRequest.dart';
import 'package:testing_app/pages/homePage.dart';
import 'package:testing_app/services/ApiManager.dart';
import 'package:testing_app/value/Routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  LoginRequest loginRequest = new LoginRequest();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2d2f41),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                  onSaved: (input) => loginRequest.email = input,
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "E-Mail cannot be empty!";
                    }
                    return null;
                  },
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
                  onSaved: (input) => loginRequest.password = input,
                  // ignore: prefer_const_constructors
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty!";
                    }
                    return null;
                  },
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
                  onPressed: () {
                    if (validateandSave()) {
                      ApiManager apiManager = new ApiManager();
                      apiManager.Login(loginRequest).then((value) {
                        if (value.success == true) {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        }
                      });
                    }
                  },
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
          ),
        ));
  }

  bool validateandSave() {
    final form = _formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
