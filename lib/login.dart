// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/shop.dart';
import 'package:nectar/register.dart';

import 'onboarding.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height * 0.13,
            ),
            SvgPicture.asset('assets/img/clogo.svg'),
            SizedBox(
              height: height * 0.13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Login',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Enter your emails and password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(124, 124, 124, 1),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(124, 124, 124, 1),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(),
                  ),
                  // Divider(
                  //   color: Colors.black,
                  // )
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(124, 124, 124, 1),
                    ),
                  ),
                  TextField(
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          }),
                      // obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        'Forgot Password?',
                        // textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  buttonwidget(
                    btnName: 'Log In',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account? ',
                        style: TextStyle(color: Colors.black),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Register())),
                        child: Text(
                          'SignUp',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
