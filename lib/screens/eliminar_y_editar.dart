import 'package:flutter/material.dart';

class EliminarEditar extends StatefulWidget {
  const EliminarEditar({super.key});

  @override
  State<EliminarEditar> createState() => _EliminarEditarState();
}

class _EliminarEditarState extends State<EliminarEditar> {
  
  
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Eliminar y editar gastos',
          style: TextStyle(
          color: Colors.white70,
          fontSize: 16,
        ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Seccion para Eliminar y editar gastos'),
          ],
        ),
      ),
    );
  }


}