import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/tumbuhkembang_page.dart';
import 'pages/consultation_page.dart';
import 'pages/profile_page.dart';
import 'pages/login_screen.dart';
import 'pages/emergency_page.dart';
import 'pages/landing_page.dart';
import 'pages/vaccination_page.dart';
import 'pages/nutrition_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      initialRoute: '/landing', // Halaman awal aplikasi
      routes: {
        '/home': (context) => const HomePage(),
        '/landing': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/tumbuhkembang': (context) => const TumbuhKembangPage(),
        '/consultation': (context) => const ConsultationPage(),
        '/login_screen': (context) => LoginScreen(),
        '/emergency': (context) => EmergencyPage(),
        '/profile': (context) => const ProfilePage(),
        '/vaccination': (context) => VaccinationPage(),
        '/nutrition': (context) => NutritionPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue, // Default theme color
      ),
    );
  }
}
