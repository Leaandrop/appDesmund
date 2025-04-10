import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/strings.dart';
import '../core/routes.dart'; // Asegúrate que ahí estén tus rutas

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              Image.asset('assets/icons/app-logo.png', width: 180, height: 180),

              const SizedBox(height: 10),

              const Text(
                'Desmund',
                style: TextStyle(
                  fontFamily: 'RobotoSlab',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'La aventura está por  iniciar,\npor favor inicia sesión',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'RobotoSlab',
                  fontSize: 16,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center, // ✅ cambio aquí
                children: [
                  const Icon(Icons.person, color: AppColors.textPrimary),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Tu Nombre',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center, // ✅ también aquí
                children: [
                  const Icon(Icons.vpn_key, color: AppColors.textPrimary),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Botón Ingresar
              OutlinedButton(
                onPressed: () {
                  // TODO: login logic
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Ingresar',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Recupera tu contraseña
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.recover);
                },
                child: const Text(
                  'Recupera tu contraseña',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    color: Colors.black,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Botón Google
              OutlinedButton.icon(
                onPressed: () {
                  // TODO: Google Sign-In
                },
                icon: Image.asset(
                  'assets/icons/google.png',
                  width: 20,
                  height: 20,
                ),
                label: const Text(
                  'Ingresa con Google',
                  style: TextStyle(
                    fontFamily: 'RobotoSlab',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.black12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Registro
              RichText(
                text: TextSpan(
                  text: 'No tienes cuenta? ',
                  style: const TextStyle(
                    fontFamily: 'RobotoSlab',
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Regístrate',
                      style: const TextStyle(
                        fontFamily: 'RobotoSlab',
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
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
