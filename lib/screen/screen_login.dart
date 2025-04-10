import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
            'assets/icons/app_logo.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),

          Text(
            AppStrings.appName,
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
           
            const SizedBox(height: 30),
            const Text(
              'La aventura está por iniciar,\npor favor inicia sesión',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF589F36),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Tu Nombre',
                prefixIcon: const Icon(Icons.person, color: Color(0xFF589F36)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: const Color(0xFF589F36).withOpacity(0.5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xFF589F36), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                prefixIcon: const Icon(Icons.lock, color: Color(0xFF589F36)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: const Color(0xFF589F36).withOpacity(0.5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xFF589F36), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement login logic
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
                AppStrings.loginButton,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // TODO: Implement password recovery
              },
              child: const Text(
                'Recupera Tu Contraseña',
                style: TextStyle(
                  color: Color(0xFFEF984E),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Implement Google Sign-In
              },
              icon: Image.asset(
                'assets/icons/google.png',
                width: 25,
                height: 25,
              ),              
              label: const Text('Ingresa con Google'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'No tienes cuenta? ',
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Registrate',
                    style: const TextStyle(
                      color: Color(0xFF589F36),
                      fontWeight: FontWeight.bold,
                    ),
                    // TODO: Add onTap for registration
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