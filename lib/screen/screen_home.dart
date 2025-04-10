import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/colors.dart';

import '../core/routes.dart';
import '../core/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Spacer(),
          // Logo
          Image.asset(
            'assets/icons/app-logo.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 20),

          // Nombre de la App
          Text(
            AppStrings.appName, 
              style: TextStyle(
              fontFamily: 'RobotoSlab',
              color: AppColors.primary,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 40),

          // Descripción
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              AppStrings.splashTitle,
              
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'RobotoSlab',
                color: Colors.black87,
                fontSize: 24,
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Botón "Comienza"
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Routes.login);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(color: AppColors.secondary, width: 2),
              ),
            ),
            child: const Text(
              'COMIENZA',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),

          const SizedBox(height: 30),

          // Botón "Regístrate"
          TextButton(
            onPressed: () {
              // TODO: Implementar lógica de registro
            },
            child: Text(
              'Regístrate',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
                color: AppColors.secondary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Spacer(), // Espaciado inferior
        ],
      ),
    );
  }
}
