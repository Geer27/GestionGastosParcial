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
        title: const Text('Editar Gastos'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.cyan,
                child: const Icon(Icons.attach_money, color: Colors.white),
              ),
              title: Text('Gasto ${index + 1}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Alimentacion'),
                  Text('\$25.00', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('01/11/2025', style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
              isThreeLine: true,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit, color: Colors.blue),
                    onPressed: () {
                      _mostrarDialogoEditar(context);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      _mostrarDialogoEliminar(context);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _mostrarDialogoEditar(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Editar Gasto'),
        content: const Text('Gasto'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Guardar'),
          ),
        ],
      ),
    );
  }

  void _mostrarDialogoEliminar(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Eliminar Gasto'),
        content: const Text('¿Esta seguro de eliminar este gasto?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Eliminar', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}