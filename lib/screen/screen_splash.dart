import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';

import '../core/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Stack(
        children: [
          // Contenido centrado verticalmente
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo grande
                Image.asset(
                  'assets/icons/app-logo.png',
                  width: 400, 
                  height: 400,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 30),
                // Nombre de la App
                Text(
                  'Desmund',
                  style: const TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),

          // Autor abajo a la derecha
          Positioned(
            right: 20,
            bottom: 20,
            child: Text(
              'D. Alejandro Jiménez Ramírez',
              style: const TextStyle(
                fontFamily: 'RobotoSlab',
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
