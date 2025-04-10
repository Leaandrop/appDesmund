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
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.of(context).pushReplacementNamed(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Espaciado superior
          const Spacer(),

          // Logo sin efectos
          Image.asset(
            'assets/icons/app-logo.png',
            width: 180,
            height: 180,
            fit: BoxFit.contain,
          ),

          // Espaciado
          const SizedBox(height: 20),

          // Nombre de la App
          Text(
          'Desmund',
          style: TextStyle(
            fontFamily: 'RobotoSlab',
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),


          // Espaciado inferior antes del texto en la esquina
          const Spacer(),

          // Texto en la parte inferior derecha
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'D. Alejandro Jiménez Ramírez',
                style: TextStyle(
                  color: const Color.fromARGB(255, 240, 9, 9),
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
