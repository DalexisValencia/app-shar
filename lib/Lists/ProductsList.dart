import 'package:shar/Lists/CategoriesList.dart';
import 'package:shar/Lists/CommentsList.dart';
import 'package:shar/interfaces/ProductsInterface.dart';

List<ProductsInterface> productsList = [
  ProductsInterface(
    id: "product-1",
    name: "Bomba hidráulica",
    shortDescription:
        "Genera presión y flujo de fluido para realizar trabajos en sistemas hidráulicos.",
    longDescription:
        "Componente que transforma la energía mecánica, generalmente proporcionada por un motor o una fuente de energía externa, en energía hidráulica, lo que permite realizar trabajos como levantar cargas pesadas, accionar cilindros hidráulicos o impulsar maquinaria en diversas aplicaciones industriales y móviles. Son cruciales en una amplia gama de sectores, desde la construcción y la manufactura hasta la aviación y la agricultura, debido a su capacidad para proporcionar fuerza y control precisos en sistemas complejos.",
    image: "1-Bomba-hidráulica.jpg",
    rating: 4,
    tagsMenu: ["tag 1", "tag 2", "tag 3"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-2",
    name: "Enfriadores de aire",
    shortDescription:
        "Dispositivo que enfría el fluido hidráulico en un sistema, utilizando aire para disipar el calor y mantener la temperatura del fluido dentro de límites operativos seguros.",
    longDescription:
        "Al mantener la temperatura del fluido dentro de límites operativos seguros, los enfriadores de aire hidráulico evitan el sobrecalentamiento, que puede causar daños a los componentes del sistema, degradación del fluido y pérdida de eficiencia. Estos enfriadores suelen consistir en un intercambiador de calor donde el fluido hidráulico caliente circula a través de tubos o serpentines mientras el aire es forzado a través de ellos por ventiladores, transfiriendo el calor del fluido al aire y enfriándose en el proceso.",
    image: "2-Enfriadores-de-aire.jpg",
    rating: 4,
    tagsMenu: ["Enfriadores", "Aire"],
    comments: commentsList,
    categories: [
      categoryList[1],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-3",
    name: "Válvula de cartucho",
    shortDescription:
        "Componente modular que se inserta en un bloque de válvulas para controlar el flujo de fluido en un sistema hidráulico.",
    longDescription:
        "Permite un control preciso del flujo de fluido en sistemas hidráulicos. Estas válvulas son modulares y se pueden configurar según las necesidades específicas del sistema, ofreciendo flexibilidad y eficiencia en el diseño y mantenimiento. Las válvulas de cartucho se utilizan para realizar diversas funciones, como el control de dirección, presión y flujo de fluido, y pueden ser operadas manual o automáticamente según la aplicación.",
    image: "3-valvula-de-cartucho.jpg",
    rating: 4,
    tagsMenu: ["Válvula", "cartucho"],
    comments: commentsList,
    categories: [
      categoryList[6],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-4",
    name: "Mando hidráulico de 6 palancas",
    shortDescription:
        "Sistema que utiliza fluido a presión para transmitir fuerza y controlar el movimiento de componentes mecánicos.",
    longDescription:
        "Genera la presión necesaria en el fluido, que luego se transmite a través de tuberías y mangueras a los componentes que realizan el trabajo, como cilindros hidráulicos que convierten la presión del fluido en movimiento lineal o motores hidráulicos que convierten la presión en movimiento rotativo. ",
    image: "4-Mando-hidráulico-de-6-palancas.jpg",
    rating: 4,
    tagsMenu: ["Mando", "hidráulico", "palancas"],
    comments: [],
    categories: [
      categoryList[3],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-5",
    name: "5 mando de 3 palancas",
    shortDescription:
        "Sistema que utiliza fluido a presión para transmitir fuerza y controlar el movimiento de componentes mecánicos.",
    longDescription:
        "Genera la presión necesaria en el fluido, que luego se transmite a través de tuberías y mangueras a los componentes que realizan el trabajo, como cilindros hidráulicos que convierten la presión del fluido en movimiento lineal o motores hidráulicos que convierten la presión en movimiento rotativo. ",
    image: "5-mando-de-3-palancas.jpg",
    rating: 4,
    tagsMenu: ["Mando", "hidráulico", "palancas"],
    comments: commentsList,
    categories: [
      categoryList[3],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-6",
    name: "Mando 1p40",
    shortDescription:
        "Sistema que utiliza fluido a presión para transmitir fuerza y controlar el movimiento de componentes mecánicos.",
    longDescription:
        "Genera la presión necesaria en el fluido, que luego se transmite a través de tuberías y mangueras a los componentes que realizan el trabajo, como cilindros hidráulicos que convierten la presión del fluido en movimiento lineal o motores hidráulicos que convierten la presión en movimiento rotativo. ",
    image: "6-mando-1p40.jpg",
    rating: 4,
    tagsMenu: ["Mando", "hidráulico", "palancas"],
    comments: commentsList,
    categories: [
      categoryList[3],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-7",
    name: "Mando de 3 palancas",
    shortDescription:
        "Sistema que utiliza fluido a presión para transmitir fuerza y controlar el movimiento de componentes mecánicos.",
    longDescription:
        "Genera la presión necesaria en el fluido, que luego se transmite a través de tuberías y mangueras a los componentes que realizan el trabajo, como cilindros hidráulicos que convierten la presión del fluido en movimiento lineal o motores hidráulicos que convierten la presión en movimiento rotativo. ",
    image: "7-mando-de-3-palancas.jpg",
    rating: 4,
    tagsMenu: ["Mando", "hidráulico", "palancas"],
    comments: commentsList,
    categories: [
      categoryList[3],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-8",
    name: "Mando de 2 palancas",
    shortDescription:
        "Sistema que utiliza fluido a presión para transmitir fuerza y controlar el movimiento de componentes mecánicos.",
    longDescription:
        "Genera la presión necesaria en el fluido, que luego se transmite a través de tuberías y mangueras a los componentes que realizan el trabajo, como cilindros hidráulicos que convierten la presión del fluido en movimiento lineal o motores hidráulicos que convierten la presión en movimiento rotativo. ",
    image: "8-mando-de-2-palancas.jpg",
    rating: 4,
    tagsMenu: ["Mando", "hidráulico", "palancas"],
    comments: commentsList,
    categories: [
      categoryList[3],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-9",
    name: "Bomba de pistones",
    shortDescription:
        "Utiliza pistones para generar presión y flujo de fluido en sistemas hidráulicos.",
    longDescription:
        "Convierte la energía mecánica en energía hidráulica mediante el movimiento de pistones dentro de un cilindro. Alta eficiencia y capacidad para generar altas presiones, lo que las hace ideales para aplicaciones que requieren un control preciso y potente del flujo de fluido. En una bomba de pistones hidráulica, los pistones se mueven alternativamente dentro de un bloque de cilindros, aspirando fluido hidráulico durante el movimiento de retroceso y comprimiendo durante el movimiento de avance. ",
    image: "9-bomba-de-pistones.jpg",
    rating: 4,
    tagsMenu: ["bomba", "hidráulicas", "pistones"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-10",
    name: "Bomba de engranajes triple",
    shortDescription:
        "Utiliza tres conjuntos de engranajes para generar flujo de fluido a alta presión en sistemas hidráulicos.",
    longDescription:
        "Están compuestas por tres conjuntos de engranajes que trabajan en conjunto para generar un flujo de fluido a alta presión. Cada conjunto de engranajes puede ser configurado para suministrar fluido a diferentes partes del sistema hidráulico o para operar a diferentes presiones según las necesidades específicas de la aplicación.",
    image: "10-bomba-de-engranajes-triple.jpg",
    rating: 3,
    tagsMenu: ["Bomba", "Engranajes"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-11",
    name: "Filtro de retorno",
    shortDescription:
        "Dispositivos que limpian el fluido hidráulico antes de que regrese al tanque, eliminando contaminantes y partículas para proteger los componentes del sistema.",
    longDescription:
        "Estos filtros están ubicados en la línea de retorno del sistema, donde capturan partículas y contaminantes que pueden haberse acumulado en el fluido durante su circulación a través de los componentes hidráulicos. Al eliminar estos contaminantes, los filtros de retorno hidráulicos protegen los componentes del sistema, como bombas, válvulas y cilindros, de daños causados por partículas abrasivas y prolongan la vida útil del fluido hidráulico. ",
    image: "11-Filtro-de-retorno.jpg",
    rating: 3,
    tagsMenu: ["Filtro"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-12",
    name: "Válvula de contrabalance",
    shortDescription:
        "Controla el movimiento de cargas pesadas en sistemas hidráulicos, evitando que se desplacen incontroladamente debido a la gravedad o fuerzas externas.",
    longDescription:
        "Manejan cargas pesadas o movimientos verticales, como en maquinaria de construcción, grúas y equipos de manipulación de materiales. Su función principal es proporcionar control y estabilidad al movimiento de estas cargas, evitando que se desplacen de manera incontrolada debido a la gravedad o fuerzas externas.",
    image: "12-Válvula-de-contrabalance.jpg",
    rating: 3,
    tagsMenu: ["Válvula", "hidráulicas"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-13",
    name: "Winche de 6 toneladas",
    shortDescription:
        "Utiliza la potencia hidráulica para enrollar y desenrollar cables o cuerdas, permitiendo levantar, arrastrar o mover cargas pesadas de manera controlada.",
    longDescription:
        "Equipo potente y versátil diseñado para realizar trabajos que requieren fuerza y control en la manipulación de cargas pesadas, utilizan la energía hidráulica para enrollar y desenrollar cables o cuerdas, lo que les permite levantar, arrastrar o mover objetos pesados de manera precisa y segura. Ampliamente utilizados en diversas industrias y aplicaciones, como la construcción, la minería, la agricultura, la pesca y la industria marítima, debido a su capacidad para proporcionar una gran fuerza de tracción y control sobre las cargas. ",
    image: "13-Winche-de-6-toneladas.jpg",
    rating: 3,
    tagsMenu: ["Winche", "toneladas"],
    comments: commentsList,
    categories: [
      categoryList[5],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-14",
    name: "Filtros de succión",
    shortDescription:
        "Limpia el fluido hidráulico antes de que ingrese a la bomba, eliminando partículas y contaminantes para proteger los componentes del sistema.",
    longDescription:
        "Su función principal es proteger la bomba y otros componentes del sistema de partículas y contaminantes que pueden estar presentes en el fluido hidráulico. Al eliminar estos contaminantes antes de que ingresen a la bomba, el filtro de succión hidráulica ayuda a prevenir daños y desgaste prematuro en los componentes del sistema, lo que puede llevar a fallas costosas y tiempo de inactividad.",
    image: "14-filtros-de-succión.jpg",
    rating: 3,
    tagsMenu: ["tag 11", "tag 12", "tag 13"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-15",
    name: "Bombas de piñón",
    shortDescription:
        "Utilizan engranajes internos y externos para generar flujo de fluido hidráulico y presión en sistemas hidráulicos.",
    longDescription:
        "Estas bombas constan de dos engranajes, uno interno y otro externo, que giran en conjunto para crear cámaras que aspiran y expulsan fluido hidráulico. A medida que los engranajes giran, el fluido es atrapado en las cámaras formadas entre los dientes de los engranajes y la carcasa de la bomba, y luego es forzado a salir hacia el sistema hidráulico. Las bombas de piñón hidráulicas son conocidas por su simplicidad, fiabilidad y eficiencia en la generación de flujo de fluido hidráulico. ",
    image: "15-bombas-de-piñón.jpg",
    rating: 5,
    tagsMenu: ["Bombas", "piñón"],
    comments: commentsList,
    categories: [
      categoryList[10],
      categoryList[11],
      categoryList[12],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-16",
    name: "Unidad hidráulica para elevador",
    shortDescription:
        "Sistema que utiliza fluidos a presión para levantar y bajar cargas pesadas de manera eficiente y segura. Está compuesta por componentes como cilindros hidráulicos, bombas, válvulas y depósitos de aceite.",
    longDescription:
        "Sistema complejo diseñado para proporcionar la fuerza necesaria para levantar y bajar cargas pesadas en aplicaciones como elevadores de vehículos, plataformas elevadoras y montacargas. Estos sistemas funcionan mediante la transmisión de presión a través de fluidos, generalmente aceite hidráulico, que se bombea a través de cilindros hidráulicos para generar movimiento lineal.",
    image: "16-Unidad-hidráulica-para-elevador.jpg",
    rating: 5,
    tagsMenu: ["Unidad", "hidráulica", "elevador"],
    comments: commentsList,
    categories: [
      categoryList[6],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-17",
    name: "Válvulas para elevador",
    shortDescription:
        "Componentes críticos en sistemas hidráulicos que controlan el flujo de fluido y la presión, permitiendo regular la velocidad y dirección del movimiento del elevador.",
    longDescription:
        "Dispositivos esenciales en los sistemas hidráulicos de elevadores que permiten controlar y regular el flujo de fluido hidráulico y la presión en el sistema. Estas válvulas juegan un papel crucial en la operación segura y eficiente de los elevadores, ya que determinan la velocidad, dirección y precisión del movimiento. Existen varios tipos de válvulas utilizadas en elevadores, incluyendo válvulas de control de flujo, control de presión, dirección, seguridad y retención, cada una con funciones específicas para garantizar el funcionamiento adecuado del sistema hidráulico.",
    image: "17-Válvulas-para-elevador.jpg",
    rating: 5,
    tagsMenu: ["Válvulas", "elevador"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-18",
    name: "Subplaca Cetop 3 con Alivio y electroválvula",
    shortDescription:
        "Componente hidráulico que integra una válvula de alivio y una electroválvula en una sola unidad, diseñada para controlar y proteger sistemas hidráulicos.",
    longDescription:
        "Componente hidráulico avanzado que combina la funcionalidad de una válvula de alivio y una electroválvula en una sola unidad. La CETOP 3 es un estándar para montaje de válvulas hidráulicas, y esta subplaca se diseña para integrarse perfectamente en sistemas hidráulicos complejos. La subplaca incluye una válvula de alivio que protege el sistema hidráulico de sobrepresiones, evitando daños a los componentes y garantizando la seguridad. La electroválvula, por otro lado, permite controlar el flujo de fluido hidráulico de manera precisa y remota, facilitando la automatización y el control del sistema. Esta combinación de funciones en una sola unidad reduce la complejidad del sistema y mejora su eficiencia.",
    image: "18-Subplaca-Cetop-3-con-Alivio-y-electroválvula.jpg",
    rating: 5,
    tagsMenu: ["Subplaca", "electroválvula"],
    comments: commentsList,
    categories: [
      categoryList[7],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-19",
    name: "Electroválvula direccional hidráulica",
    shortDescription:
        "Una electroválvula direccional es un dispositivo que controla la dirección del flujo de fluido en sistemas hidráulicos o neumáticos, permitiendo dirigir el flujo hacia diferentes partes del sistema.",
    longDescription:
        "Una electroválvula direccional es un componente clave en sistemas hidráulicos y neumáticos que permite controlar la dirección del flujo de fluido de manera precisa y eficiente. Estas válvulas están diseñadas para dirigir el flujo hacia diferentes partes del sistema, permitiendo realizar diversas funciones como avanzar, retroceder, subir o bajar.",
    image: "19-Electroválvula-direccional-hidráulica.jpg",
    rating: 5,
    tagsMenu: ["Electroválvula", "direccional"],
    comments: commentsList,
    categories: [
      categoryList[7],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-20",
    name: "Filtro de Retorno sobre Tanque",
    shortDescription:
        "Dispositivo que limpia el fluido hidráulico antes de que regrese al tanque, eliminando contaminantes y partículas para proteger el sistema hidráulico.",
    longDescription:
        "Componente crítico en sistemas hidráulicos que se encarga de limpiar el fluido hidráulico antes de que regrese al tanque. Estos filtros están diseñados para capturar partículas y contaminantes que pueden haberse acumulado en el fluido durante su circulación por el sistema, lo que ayuda a mantener la limpieza y la calidad del fluido. Al eliminar estos contaminantes, los filtros de retorno sobre tanque protegen los componentes del sistema hidráulico de daños y desgaste prematuro.",
    image: "20-Filtro-de-Retorno-sobre-Tanque.jpg",
    rating: 5,
    tagsMenu: ["Filtro", "Tanque"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-21",
    name: "Termovisor de Nivel",
    shortDescription:
        "Dispositivo que utiliza sensores térmicos para detectar el nivel de líquidos en un tanque o recipiente, proporcionando una medición precisa y fiable.",
    longDescription:
        "Dispositivo avanzado que utiliza sensores térmicos para detectar el nivel de líquidos en un tanque o recipiente. Estos dispositivos funcionan aprovechando la diferencia de temperatura entre el líquido y el vapor o gas que se encuentra por encima de el. Al medir la temperatura en diferentes puntos del tanque, el termovisor de nivel puede determinar con precisión el nivel del líquido, incluso en condiciones de proceso difíciles. Esto los hace ideales para aplicaciones en industrias como la química, petroquímica y de procesamiento de alimentos, donde la medición precisa del nivel de líquidos es crucial para la seguridad y la eficiencia del proceso.",
    image: "21-Termovisor-de-Nivel.jpg",
    rating: 5,
    tagsMenu: ["Termovisor", "Nivel"],
    comments: commentsList,
    categories: [
      categoryList[8],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-22",
    name: "Bomba Hidráulica para Minicentralina",
    shortDescription:
        "Dispositivo compacto que proporciona la presión y flujo de fluido necesarios para operar sistemas hidráulicos pequeños y medianos.",
    longDescription:
        "Dispositivo diseñado para proporcionar la presión y flujo de fluido necesarios para operar sistemas hidráulicos pequeños y medianos. Estas bombas son ideales para aplicaciones donde el espacio es limitado y se requiere una fuente de energía hidráulica compacta y fiable. Las bombas hidráulicas para minicentralina suelen ser diseñadas para ser fáciles de instalar y mantener, y pueden ser utilizadas en una variedad de aplicaciones, incluyendo maquinaria industrial, equipos móviles y sistemas de automatización.",
    image: "22-Bomba-Hidráulica-para-Minicentralina.jpg",
    rating: 5,
    tagsMenu: ["Bomba", "Hidráulica"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-23",
    name: "Checks en Línea",
    shortDescription:
        "Válvulas que permiten el flujo de fluido en una dirección y lo bloquean en la dirección opuesta, evitando retrocesos y daños en sistemas hidráulicos.",
    longDescription:
        "Válvulas hidráulicas que permiten el flujo de fluido en una dirección y lo bloquean en la dirección opuesta. Estos dispositivos son fundamentales en sistemas hidráulicos, ya que evitan retrocesos y daños causados por flujos inversos. Al permitir el flujo en una dirección y bloquearlo en la otra, los checks en línea ayudan a mantener la estabilidad y la eficiencia del sistema hidráulico, evitando pérdidas de presión y daños a los componentes.",
    image: "23-Checks-en-Línea.jpg",
    rating: 5,
    tagsMenu: ["Checks", "Línea"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-24",
    name: "Tapas de Llenado",
    shortDescription:
        "Componentes que permiten acceder al interior de un tanque o recipiente para llenarlo o vaciarlo, mientras mantienen la seguridad y la integridad del sistema.",
    longDescription:
        "Componentes críticos en sistemas hidráulicos y de almacenamiento de fluidos que permiten acceder al interior de un tanque o recipiente para llenarlo o vaciarlo. Estas tapas están diseñadas para proporcionar un punto de acceso seguro y controlado, mientras mantienen la integridad del sistema y evitan la entrada de contaminantes. Las tapas de llenado suelen estar equipadas con características como filtros, válvulas de ventilación y dispositivos de seguridad que ayudan a prevenir accidentes y garantizar la seguridad del personal y del equipo. Son ampliamente utilizadas en aplicaciones industriales, móviles y de almacenamiento de fluidos.",
    image: "24-Tapas-de-Llenado.jpg",
    rating: 5,
    tagsMenu: ["Tapas", "Llenado"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-25",
    name: "KIT de Reparación para Bomba",
    shortDescription:
        "Conjunto de piezas y componentes diseñados para reparar y mantener bombas hidráulicas Parker de la serie P2-145.",
    longDescription:
        " Conjunto completo de piezas y componentes diseñados para reparar y mantener bombas hidráulicas Parker de la serie P2-145. Estos kits suelen incluir sellos, empaquetaduras, rodamientos y otros componentes críticos que pueden necesitar ser reemplazados durante el proceso de reparación. Al utilizar un kit de reparación original de Parker, los técnicos pueden asegurarse de que la bomba vuelva a funcionar de manera eficiente y segura, minimizando el tiempo de inactividad y reduciendo los costos de mantenimiento.",
    image: "25-KIT-de-Reparación-para-Bomba.jpg",
    rating: 5,
    tagsMenu: ["KIT", "Reparación", "Bomba"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-26",
    name: "Tapa Spin ON",
    shortDescription:
        "Tapa de llenado que se atornilla directamente sobre el tanque o recipiente, proporcionando un acceso seguro y fácil para llenar o vaciar el fluido.",
    longDescription:
        " Tipo de tapa de llenado diseñada para proporcionar un acceso seguro y fácil para llenar o vaciar fluidos en tanques o recipientes. Estas tapas se caracterizan por su diseño de rosca que se atornilla directamente sobre el tanque, creando un sello hermético que evita fugas y contaminación. Las tapas spin-on son ampliamente utilizadas en aplicaciones industriales, móviles y de equipos pesados debido a su facilidad de uso y mantenimiento.",
    image: "26-Tapa-Spin-ON.jpg",
    rating: 5,
    tagsMenu: ["Tapa", "Spin"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-27",
    name: "Bombas de Engranajes",
    shortDescription:
        "Bombas hidráulicas diseñadas para proporcionar un flujo de fluido constante y fiable en equipos agrícolas, de construcción y otros vehículos pesados.",
    longDescription:
        "Bombas hidráulicas de alta calidad diseñadas para proporcionar un flujo de fluido constante y fiable en una variedad de aplicaciones, incluyendo equipos agrícolas, de construcción y otros vehículos pesados. Estas bombas están diseñadas para soportar las condiciones más exigentes y proporcionar un rendimiento óptimo y duradero. Con su diseño robusto y tecnología avanzada, las bombas de engranajes John Deere son ideales para aplicaciones que requieren una fuente de energía hidráulica fiable y eficiente.Tipo de tapa de llenado diseñada para proporcionar un acceso seguro y fácil para llenar o vaciar fluidos en tanques o recipientes. Estas tapas se caracterizan por su diseño de rosca que se atornilla directamente sobre el tanque, creando un sello hermético que evita fugas y contaminación. Las tapas spin-on son ampliamente utilizadas en aplicaciones industriales, móviles y de equipos pesados debido a su facilidad de uso y mantenimiento.",
    image: "27-Bombas-de-Engranajes.jpg",
    rating: 5,
    tagsMenu: ["Bombas", "Engranajes"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-28",
    name: "Motor Hidráulico BMSY",
    shortDescription:
        "Dispositivo que convierte la energía hidráulica en energía mecánica, proporcionando movimiento rotativo para aplicaciones industriales y móviles.",
    longDescription:
        "Convierte la energía hidráulica en energía mecánica, proporcionando movimiento rotativo para una variedad de aplicaciones industriales y móviles. Estos motores están diseñados para ser eficientes y fiables, y suelen ser utilizados en sistemas hidráulicos que requieren un control preciso del movimiento y la velocidad. Con su diseño compacto y robusto, los motores hidráulicos BMSY son ideales para aplicaciones que requieren una fuente de energía fiable y eficiente, como en la industria de la construcción, la minería y la agricultura.",
    image: "28-Motor-Hidráulico-BMSY.jpg",
    rating: 5,
    tagsMenu: ["Motor", "Hidráulico"],
    comments: commentsList,
    categories: [
      categoryList[9],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-29",
    name: "Válvula contrabalance CBCA",
    shortDescription:
        "Proporciona control y estabilidad en sistemas hidráulicos, permitiendo un funcionamiento seguro y eficiente.",
    longDescription:
        "Válvula hidráulica diseñada para proporcionar control y estabilidad en sistemas hidráulicos que involucran cargas pesadas o movimientos críticos. Estas válvulas funcionan permitiendo el flujo de fluido en una dirección mientras mantienen la presión en la otra dirección, lo que ayuda a prevenir la caída libre de cargas y a mantener el control del sistema. Con su diseño compacto y robusto, las válvulas contrabalance CBCA de Sun Hydraulics son ideales para aplicaciones industriales y móviles que requieren un control preciso y fiable del movimiento y la presión.",
    image: "29-Válvula-contrabalance-CBCA.jpg",
    rating: 5,
    tagsMenu: ["Motor", "Hidráulico"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-30",
    name: "Empaque plato p50",
    shortDescription:
        "Componente de sellado diseñado para proporcionar una unión hermética y segura en sistemas hidráulicos y neumáticos.",
    longDescription:
        "Componente de sellado de alta calidad diseñado para proporcionar una unión hermética y segura en sistemas hidráulicos y neumáticos. Estos empaques están fabricados con materiales resistentes y duraderos que pueden soportar las condiciones más exigentes, como altas presiones y temperaturas. El empaque plato P50 es ideal para aplicaciones industriales y móviles que requieren un sellado fiable y eficiente, como en sistemas hidráulicos de maquinaria pesada, equipos de proceso y sistemas neumáticos. Su diseño preciso y su material de alta calidad aseguran una larga vida útil y un rendimiento óptimo.",
    image: "30-Empaque-plato-p50.jpg",
    rating: 5,
    tagsMenu: ["Motor", "Hidráulico"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
];
