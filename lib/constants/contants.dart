import 'package:flutter/material.dart';
import 'package:shar/interfaces/BillInterface.dart';

const blackColor = Color(0xFF000000); // GREY
const whiteColor = Color(0xFFFBFBFB); // WHITE
const yellowColor = Color(0xFFF4AF31); // YELLOW BLUE
const greyColor = Color(0xFF727272); // DARK GRAY
const greyLightColor = Color.fromARGB(255, 201, 201, 201); // LIGHT GRAY

snackBarAddCart(BuildContext context, name, alert) {
  final snackBarCar = SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: yellowColor,
    content: RichText(
      text: TextSpan(
        text: name,
        style: const TextStyle(
          color: blackColor,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
            text: alert,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBarCar);
}

String templateFactura = '''
  <html>
    <body>
      <h1 style="border:1px solid red;">Resumen de tu factura</h1>
      <p>Fecha: {{fecha}}</p>
      <p>Cliente: {{cliente}}</p>
      <table border="1">
        <tr>
          <th>Producto</th>
          <th>Precio</th>
          <th>Cantidad</th>
          <th>Total</th>
        </tr>
        {{#productos}}
        <tr>
          <td>{{nombre}}</td>
          <td>{{precio}}</td>
          <td>{{cantidad}}</td>
          <td>{{total}}</td>
        </tr>
        {{/productos}}
      </table>
      <p>Total: {{total}}</p>
    </body>
  </html>
''';


String renderizarTemplate(BillInterface factura) {
  String productosHtml = '';
  for (var producto in factura.productos) {
    productosHtml += '''
      <tr>
        <td>${producto.name}</td>
        <td>${producto.longDescription}</td>
        <td>${producto.amount}</td>
      </tr>
    ''';
  }

  String html = templateFactura
      .replaceAll('{{fecha}}', factura.fecha)
      .replaceAll('{{cliente}}', factura.cliente)
      .replaceAll('{{productos}}', productosHtml)
      .replaceAll('{{total}}', factura.total.toString());

  return html;
}
