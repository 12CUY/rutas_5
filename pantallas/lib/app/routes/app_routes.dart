// lib/routes/app_routes.dart
import 'package:flutter/material.dart';
import 'package:pantallas/app/vistas/bienvenida_view.dart';
import 'package:pantallas/app/vistas/login_view.dart';
import 'package:pantallas/app/vistas/descripcion_proy_view.dart';
import 'package:pantallas/app/vistas/register_view.dart';
import 'package:pantallas/app/vistas/pantalla_opn.dart';



class AppRoutes {
  static const String bienvenida = '/bienvenida';
  static const String login = '/login';
  static const String register = '/register';
  static const String descipcion = '/description';
  static const String options = '/options';

  // Método para obtener las rutas
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      bienvenida: (context) => const BienvenidaView(),
      // Agregar las demás rutas aquí
      login: (context) => const LoginView(),
      register: (context) => const RegisterView(),
      descipcion: (_) => const DescriptionView(),
      options: (context) => const OptionsView(),
    };
  }
}
