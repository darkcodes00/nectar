// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/account.dart';
import 'package:nectar/cart.dart';
import 'package:nectar/explore.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [
    Explore(),
    Cart(),
    Account(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/img/store.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/img/explore.png'),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/img/cart.png'),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/img/account.png'),
            label: 'School',
          ),
        ],
      ),
      drawer: Drawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset('assets/img/Frame.png'),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/img/LOGO.png',
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Image.asset('assets/img/search.png'),
          ),
          IconButton(
            onPressed: () => {},
            icon: Image.asset('assets/img/bell.png'),
          ),
          IconButton(
            onPressed: () => {},
            icon: Image.asset('assets/img/heart.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                child: Image.asset('assets/img/bannerp.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff53B175),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/img/lamp.png'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Black Simple Lamp',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff606060),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$ 12.00',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff303030),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset('assets/img/m.png'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Black Simple Lamp',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff606060),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$ 12.00',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff303030),
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
      ),
    );
  }
}
