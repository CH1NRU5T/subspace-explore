// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NeomorphismLogo(),
                  Text(
                    'SubSpace',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '256 bit security | 100% Indian',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )),
            ),
            Align(
              child: SpinKitThreeInOut(
                color: Colors.white,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NeomorphismLogo extends StatelessWidget {
  const NeomorphismLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Color.fromARGB(69, 255, 255, 255),
            offset: Offset(-0.1, -0.1),
          ),
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Colors.black,
            offset: Offset(3, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff212121),
      ),
      child: Image.asset(
        'assets/subspace.png',
        scale: 2,
      ),
    );
  }
}
