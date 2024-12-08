// lib/main.dart
import 'package:flutter/material.dart';
import 'package:pantallas/app/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      initialRoute: AppRoutes.login,
      routes: AppRoutes.getRoutes(), // Usando el método getRoutes
    );
  }
}
