import 'package:shar/interfaces/BillInterface.dart';

String renderizarTemplate(BillInterface factura) {
  String productosHtml = '';
  double totalProducts = 0;
  for (var producto in factura.productos) {
    totalProducts += producto.amount;
    productosHtml += '''
        <div style="background-color: white; margin: 5px; border-radius: 5px; display: flex; min-height: 100px; margin-bottom: 10px">
            <div style="border-top-left-radius: 5px; border-bottom-left-radius: 5px; width: 200px;background-image: url(https://raw.githubusercontent.com/DalexisValencia/app-shar/refs/heads/master/images/1.base-product.png);background-size: cover;background-position: center;">

            </div>
            <div style="padding: 10px 20px 25px; position: relative; width: 100%; color: black !important;">
                <h3 style="margin: 0px;">${producto.name}</h3>
                <p style="margin: 0px;">
                  ${producto.shortDescription}
                </p>

                <b style="position: absolute; right: 20px; bottom: 10px;">Cantidad ${producto.amount}</b>
            </div>
        </div>
    ''';
  }

  String html = '''
  <html>
    <body>
      <section style="
        color: black !important;
        border-top: 5px solid #f8b133;
        border-bottom: 5px solid #f8b133;
        border-radius: 5px;
        width: 80%;
        margin: 0px auto;
        background-color: #f5f0e4;
        padding: 0px 40px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">
        <header
            style="padding: 20px 10px; border-bottom: 5px solid black;margin-bottom: 20px;">
            <img src="https://raw.githubusercontent.com/DalexisValencia/app-shar/refs/heads/master/images/logo.png"
                width="70" style="float: left; "/>
            <h2 style="float: right; color: black !important;">
                Resumen de tu cotización
            </h2>
            <div style="clear: both"></div>
        </header>

        <section style="margin-bottom: 20px; font-size: 16px; color: black !important;">
            <p>
                A continuación te presentamos un resumen de tu cotización realizada el día ${factura.fecha} en la <b>aplicación
                    de SHAR.</b>
            </p>

            <p>
                Dentro de poco recibirá un correo con todos los detalles de cada uno de los productos que agrego en esta cotización.
            </p>
        </section>

        <section style="margin-bottom: 20px; font-size: 16px; color: black !important;">
            <h3 style="margin-bottom: 10px;">
                Datos del comprador
            </h3>

            <ul style="list-style: none; margin: 0px; padding: 0px;">
                <li>Nombre: ${factura.cliente}</li>
            </ul>
        </section>

        <section style="margin-bottom: 20px; ">
            <div style="border-top: 2px solid black;padding: 20px 0; margin-bottom: 10px; color: black !important;">
                <h3 style="margin:0; float: left;">
                    Productos a cotizar
                </h3>
                <span style="margin:0; float: right;">
                    Cantidad: $totalProducts
                </span>
                <div style="clear: both"></div>
            </div>

            $productosHtml
            
        </section>

    </section>
    </body>
  </html>
''';

  return html;
}
