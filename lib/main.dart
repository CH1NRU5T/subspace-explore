import 'package:flutter/material.dart';

import 'screens/explore.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 2)),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return const Explore();
            default:
              return const SplashScreen();
          }
        },
      ),
    ),
    routes: {
      '/explore': (context) => const Explore(),
    },
  ));
}
