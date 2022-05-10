import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, callback);
  }

  callback() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OnBoarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff53B175),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/img/logo.svg'),
        ],
      ),
    );
  }
}
