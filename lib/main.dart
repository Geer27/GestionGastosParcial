import 'package:flutter/material.dart';
import 'package:gastos_personales/screens/agregar_gasto.dart';
import 'package:gastos_personales/screens/eliminar_y_editar.dart';
import 'package:gastos_personales/screens/pantalla_principal.dart';
import 'package:gastos_personales/screens/reporte_gasto.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('Aplicacion de control de gastos personales'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: true,
      ),

      initialRoute: '/',

      routes: {
        '/' : (context) => const PantallaPrincipal(),
        '/agregar_gasto' : (context) => const AgregarGasto(),
        '/reporte_gasto' : (context) => const ReporteGasto(),
        'eliminar_y_editar' : (context) => const EliminarEditar(),
      },
    );
  }
}