import 'package:flutter/material.dart';
import 'package:gastos_personales/screens/agregar_gasto.dart';
import 'package:gastos_personales/screens/reporte_gasto.dart';
import 'package:gastos_personales/screens/eliminar_y_editar.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ListaGastosScreen(),
    const AgregarGasto(),
    const ReporteGasto(),
    const EliminarEditar(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Gastos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Agregar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Reportes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Editar',
          ),
        ],
      ),
    );
  }
}

class ListaGastosScreen extends StatefulWidget {
  const ListaGastosScreen({super.key});

  @override
  State<ListaGastosScreen> createState() => _ListaGastosScreenState();
}

class _ListaGastosScreenState extends State<ListaGastosScreen> {
  double totalGastos = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gastos Personales'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: const Icon(Icons.monetization_on, color: Colors.cyan),
                    title: Text('Gasto ${index + 1}'),
                    subtitle: const Text('Alimentacion - \$25.00'),
                    trailing: const Text('01/11/2025'),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.cyan.shade50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total de Gastos:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${totalGastos.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.cyan),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}