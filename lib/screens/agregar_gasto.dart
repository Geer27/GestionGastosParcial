import 'package:flutter/material.dart';

class AgregarGasto extends StatefulWidget {
  const AgregarGasto({super.key});

  @override
  State<AgregarGasto> createState() => _AgregarGastoState();
}

class _AgregarGastoState extends State<AgregarGasto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Agregar Gastos',
          style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Seccion para agregar gastos'),
          ],
        ),
      ),
    );
  }
}