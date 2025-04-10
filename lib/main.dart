import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/screen_login.dart';

import '../core/routes.dart';
import 'screen/screen_home.dart';
import 'screen/screen_splash.dart';
 
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NombreDelaApp',      
      initialRoute: Routes.splash,
      routes: {
        Routes.splash: (context) => const SplashScreen(),
        Routes.home: (context) => const HomeScreen(),
        Routes.login: (context) => const LoginScreen(),
      },
    );
  }
}

