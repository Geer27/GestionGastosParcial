import 'package:flutter/material.dart';
import 'package:gastos_personales/models/categoria.dart';

class ReporteGasto extends StatefulWidget {
  const ReporteGasto({super.key});

  @override
  State<ReporteGasto> createState() => _ReporteGastoState();
}

class _ReporteGastoState extends State<ReporteGasto> {
  Categoria? _categoriaFiltro;
  String _mesSeleccionado = 'Noviembre 2025';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reportes de Gastos'),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.cyan.shade50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Filtrar por Mes',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  items: [
                    'Noviembre 2025',
                    'Octubre 2025',
                    'Septiembre 2025',
                  ].map((mes) {
                    return DropdownMenuItem(
                      value: mes,
                      child: Text(mes),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _mesSeleccionado = value!;
                    });
                  },
                ),
                const SizedBox(height: 16),
                const Text(
                  'Filtrar por Categoria',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField<Categoria?>(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Todas las categorias',
                  ),
                  items: [
                    const DropdownMenuItem(
                      value: null,
                      child: Text('Todas'),
                    ),
                    ...Categoria.values.map((categoria) {
                      return DropdownMenuItem(
                        value: categoria,
                        child: Text(categoria.name.toUpperCase()),
                      );
                    }),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _categoriaFiltro = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Resumen Mensual',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Total Gastos:', style: TextStyle(fontSize: 16)),
                            Text(
                              '\$0.00',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan.shade700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Gastos por Categoria',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.fastfood, color: Colors.orange),
                        title: const Text('Alimentacion'),
                        trailing: const Text('\$0.00', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(Icons.directions_car, color: Colors.blue),
                        title: const Text('Transporte'),
                        trailing: const Text('\$0.00', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: const Icon(Icons.movie, color: Colors.purple),
                        title: const Text('Entretenimiento'),
                        trailing: const Text('\$0.00', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}