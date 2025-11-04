import 'package:flutter/material.dart';
import 'package:gastos_personales/models/categoria.dart';
import 'package:gastos_personales/models/gasto.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {

    Gasto gasto = Gasto(monto: 0.0, categoria: Categoria(alimentacion: '', transporte: '', entretenimiento: ''), descripcion: '');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gastos',
          style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Registro de los gastos personales'),
          ],
        ),
      ),
    );
  }
}