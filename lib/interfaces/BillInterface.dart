import 'package:shar/interfaces/ProductsInterface.dart';

class BillInterface {
  String fecha;
  String cliente;
  List<ProductsInterface> productos;
  double total;

  BillInterface({
    required this.fecha,
    required this.cliente,
    required this.productos,
    required this.total,
  });
}
