import 'package:shar/constants/contants.dart';
import 'package:shar/interfaces/BillInterface.dart';

String renderizarTemplate(BillInterface factura) {
  String productosHtml = '';
  int totalProducts = 0;
  for (var producto in factura.productos) {
    totalProducts += producto.amount;
    productosHtml += '''
      <div style="background-color: white; margin: 5px; border-radius: 5px; display: flex; min-height: 100px; margin-bottom: 10px">
        <div style="
          border-top-left-radius: 5px;
          border-bottom-left-radius: 5px;
          width: 200px;
          background-image: url($urlBaseAssets/${producto.image});
          background-size: cover;
          background-position: center;
        "></div>

        <div style="padding: 10px 20px 25px; position: relative; width: 100%; color: black !important;">
            <h5 style="margin: 0px 0 10px 0;">${producto.name}</h5>
            <p style="margin: 0px; font-size: 15px;">
                ${producto.shortDescription}
            </p>

            <b style="position: absolute; right: 20px; bottom: 10px;font-size: 12px;">Cantidad ${producto.amount}</b>
        </div>
      </div>
    ''';
  }

  String html = '''
  <html>
    <body>
         <section>
        <div style="width: 100%;height: 50px;background-color: #fac464;"></div>
        <section style="
        width: 80%;
        max-width: 400px;
        margin: 0 auto;
    ">
        <div style="border: 1px solid #fac464;margin-top:20px" >
            <img src="https://raw.githubusercontent.com/DalexisValencia/app-shar/refs/heads/master/images/Sliders/slider-aniversary.jpg"
                style="width: 100%;" />
        </div>

        <section style="
        color: black !important;
        border-top: 5px solid #f8b133;
        border: 1px solid #e1e1e1;
        border-radius: 5px;
        margin: 20px 0;
        background-color: #f7f7f7;
        padding: 0px 20px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">


            <header style="border-bottom: 1px solid #e1e1e1;">
                <h4 style="color: black !important; text-align: left;">
                    !Hola ${factura.cliente}, estos son los detalles de tu cotización !
                </h4>
            </header>

            <section style="margin-bottom: 10px; font-size: 16px; color: black !important;border-bottom: 1px solid #e1e1e1;">
                <p>
                    A continuación te presentamos un resumen de tu cotización realizada el día ${factura.fecha} en la
                    <b>aplicación
                        de SHAR.</b>
                </p>

                <p>
                    Dentro de poco recibirás un correo con todos los detalles de cada uno de los siguientes productos.
                </p>
            </section>

            <section style="margin-bottom: 20px;border-bottom: 1px solid #e1e1e1;">
                <div style="padding: 10px 0; margin-bottom: 10px; color: black !important;">
                    <h4 style="margin:0; float: left;">
                        Productos:
                    </h4>
                    <span style="margin:0; float: right;">
                        Cantidad: $totalProducts
                    </span>
                    <div style="clear: both"></div>
                </div>

                $productosHtml

            </section>

            <p style="text-align:center;border-bottom: 3px solid #e1e1e1;padding: 20px 10px;">
                Este mensaje es confidencial y está destinado únicamente para el destinatario indicado. <br><br>
                Si usted no es el destinatario, por favor elimine este mensaje y notifique al remitente. <br><br>
                La información contenida en este mensaje es propiedad exclusiva de SHAR y está protegida por derechos de
                autor. <br><br>
                Queda prohibida la reproducción, distribución o uso no autorizado de esta información sin el
                consentimiento expreso de SHAR.
                <br /><br>
                Todos los derechos reservados 2025.
            </p>

        </section>
    </section>
    </section>

    
    </body>
  </html>
''';

  return html;
}
