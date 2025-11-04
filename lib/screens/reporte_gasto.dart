import 'package:flutter/material.dart';

class ReporteGasto extends StatefulWidget {
  const ReporteGasto({super.key});

  @override
  State<ReporteGasto> createState() => _ReporteGastoState();
}

class _ReporteGastoState extends State<ReporteGasto> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reporte de Gastos',
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