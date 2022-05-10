// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/login.dart';

import 'onboarding.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _passwordVisible1 = false;
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Enter your credentials to continue',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(124, 124, 124, 1),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Username',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(124, 124, 124, 1),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(124, 124, 124, 1),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                    obscureText: !_passwordVisible1,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible1
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible1 = !_passwordVisible1;
                            });
                          }),
                      // obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'by continuing you agree to our',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(color: Colors.blue),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () => print('hiii'),
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(color: Colors.blue),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () => print('hiii'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  buttonwidget(
                    btnName: 'Sign Up',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LogInPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(color: Colors.black),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => LogInPage())),
                        child: Text(
                          'LogIn',
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
