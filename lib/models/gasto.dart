import 'package:gastos_personales/models/categoria.dart';

class Gasto {

  int? id;
  double monto;
  Categoria categoria;
  String descripcion;
  DateTime fecha;

  Gasto ({
    this.id,
    required this.monto,
    required this.categoria,
    required this.descripcion,
    required this.fecha,
  });
}