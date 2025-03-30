import 'package:flutter/material.dart';

class Termsandconditions extends StatelessWidget {
  const Termsandconditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Términos y condiciones",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Introducción",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "La presente aplicación de hidráulica de la empresa SHAR (en adelante, \"la Aplicación\") es propiedad de la empresa hidráulica construida por Erika Julieth Ramirez Rodrigue y Duvan Alexis Valencia Munca como parte del proyecto de grado de Diseño gráfico de la fundación Universitaria San Mateo (en adelante, \"el Proovedor\"). La Aplicación ofrece productos y servicios relacionados con la hidráulica a los usuarios (en adelante, \"el Usuario\").",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Aceptación de los Términos y Condiciones",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Al acceder y utilizar la Aplicación, el Usuario acepta los presentes Términos y Condiciones. Si el Usuario no está de acuerdo con estos Términos y Condiciones, no debe utilizar la Aplicación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Registro y Cuenta",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Para utilizar la Aplicación, el Usuario debe registrarse y crear una cuenta. El Usuario debe proporcionar información precisa y actualizada, incluyendo su dirección de correo electrónico y una contraseña.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Uso de la Aplicación",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Usuario se compromete a utilizar la Aplicación solo para fines legítimos y de acuerdo con los presentes Términos y Condiciones. El Usuario no debe:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Utilizar la Aplicación para cualquier propósito ilegal o no autorizado.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Interferir con el funcionamiento normal de la Aplicación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Intentar acceder a la información de otros usuarios sin autorización.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Propiedad Intelectual",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "La Aplicación y su contenido, incluyendo textos, imágenes y logotipos, son propiedad del Proveedor o de terceros. El Usuario no tiene derecho a reproducir, distribuir o modificar el contenido de la Aplicación sin autorización previa y expresa del Proveedor.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Venta de Productos",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "La Aplicación ofrece productos y servicios relacionados con la hidráulica. El Usuario puede comprar productos a través de la Aplicación, y el Proveedor se comprometen a entregar los productos de acuerdo con los términos y condiciones de la venta.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Política de Privacidad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Proveedor se compromete a proteger la privacidad del Usuario y a tratar sus datos personales de acuerdo con la Política de Tratamiento de Datos que se describe a continuación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Limitación de Responsabilidad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Proveedor no se hace responsable de cualquier daño o pérdida que sufra el Usuario como resultado de la utilización de la Aplicación, excepto en casos de negligencia o culpa grave del Proveedor.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Ley Aplicable y Jurisdicción",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Los presentes Términos y Condiciones se rigen por las leyes de Colombia y cualquier disputa o controversia que surja en relación con los mismos será sometida a los tribunales de Bogotá.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Cambios en los Términos y Condiciones",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Proveedor se reserva el derecho de modificar los presentes Términos y Condiciones en cualquier momento. Los cambios entrarán en vigor a partir de la fecha de publicación en la Aplicación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Cambios en los Términos y Condiciones",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Política de Tratamiento de Datos",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Introducción",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "La presente Política de Tratamiento de Datos describe cómo el Proveedor trata los datos personales de los Usuarios de la Aplicación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Datos Personales Recopilados",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Proveedor recopila los siguientes datos personales de los Usuarios:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Dirección de correo electrónico.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Contraseña.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Finalidad del Tratamiento",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Proveedor trata los datos personales de los Usuarios para las siguientes finalidades:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Gestionar la cuenta del Usuario y proporcionar acceso a la Aplicación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Realizar ventas y entregar productos.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Enviar comunicaciones y promociones relacionadas con la Aplicación y los productos.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Legitimidad del Tratamiento",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El tratamiento de los datos personales se basa en la legitimidad del consentimiento del Usuario al registrarse en la Aplicación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Destinatarios de los Datos",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Proveedor no compartirá los datos personales de los Usuarios con terceros, excepto en los siguientes casos:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Cuando sea necesario para cumplir con la ley o una orden judicial.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Cuando sea necesario para proteger los derechos y propiedades del Proveedor.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Derechos de los Usuarios",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Los Usuarios tienen los siguientes derechos en relación con sus datos personales:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Derecho a acceder a sus datos personales.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Derecho a rectificar o actualizar sus datos personales.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "- Derecho a cancelar su cuenta y eliminar sus datos personales.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Seguridad de los Datos",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Proveedor implementa medidas de seguridad adecuadas para proteger los datos personales de los Usuarios contra la pérdida, el acceso no autorizado o la divulgación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
               Text(
                "Notificación de Cambios",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "El Proveedor notificará a los Usuarios de cualquier cambio en la presente Política de Tratamiento de Datos a través de la Aplicación.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
