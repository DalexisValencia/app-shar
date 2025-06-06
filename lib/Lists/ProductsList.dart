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
        "Componente que transforma la energía mecánica, generalmente proporcionada por un motor o una fuente de energía externa, en energía hidráulica, lo que permite realizar trabajos como levantar cargas pesadas, accionar cilindros hidráulicos o impulsar maquinaria en diversas aplicaciones industriales y móviles.\n\n Son cruciales en una amplia gama de sectores, desde la construcción y la manufactura hasta la aviación y la agricultura, debido a su capacidad para proporcionar fuerza y control precisos en sistemas complejos.",
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
        "Al mantener la temperatura del fluido dentro de límites operativos seguros, los enfriadores de aire hidráulico evitan el sobrecalentamiento, que puede causar daños a los componentes del sistema, degradación del fluido y pérdida de eficiencia.\n\n  Estos enfriadores suelen consistir en un intercambiador de calor donde el fluido hidráulico caliente circula a través de tubos o serpentines mientras el aire es forzado a través de ellos por ventiladores, transfiriendo el calor del fluido al aire y enfriándose en el proceso.",
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
        "Permite un control preciso del flujo de fluido en sistemas hidráulicos.\n\n  Estas válvulas son modulares y se pueden configurar según las necesidades específicas del sistema, ofreciendo flexibilidad y eficiencia en el diseño y mantenimiento.\n\n  Las válvulas de cartucho se utilizan para realizar diversas funciones, como el control de dirección, presión y flujo de fluido, y pueden ser operadas manual o automáticamente según la aplicación.",
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
        "Convierte la energía mecánica en energía hidráulica mediante el movimiento de pistones dentro de un cilindro.\n\n Alta eficiencia y capacidad para generar altas presiones, lo que las hace ideales para aplicaciones que requieren un control preciso y potente del flujo de fluido.\n\n En una bomba de pistones hidráulica, los pistones se mueven alternativamente dentro de un bloque de cilindros, aspirando fluido hidráulico durante el movimiento de retroceso y comprimiendo durante el movimiento de avance. ",
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
        "Están compuestas por tres conjuntos de engranajes que trabajan en conjunto para generar un flujo de fluido a alta presión.\n\n Cada conjunto de engranajes puede ser configurado para suministrar fluido a diferentes partes del sistema hidráulico o para operar a diferentes presiones según las necesidades específicas de la aplicación.",
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
        "Estos filtros están ubicados en la línea de retorno del sistema, donde capturan partículas y contaminantes que pueden haberse acumulado en el fluido durante su circulación a través de los componentes hidráulicos.\n\n Al eliminar estos contaminantes, los filtros de retorno hidráulicos protegen los componentes del sistema, como bombas, válvulas y cilindros, de daños causados por partículas abrasivas y prolongan la vida útil del fluido hidráulico. ",
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
        "Manejan cargas pesadas o movimientos verticales, como en maquinaria de construcción, grúas y equipos de manipulación de materiales.\n\n Su función principal es proporcionar control y estabilidad al movimiento de estas cargas, evitando que se desplacen de manera incontrolada debido a la gravedad o fuerzas externas.",
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
        "Equipo potente y versátil diseñado para realizar trabajos que requieren fuerza y control en la manipulación de cargas pesadas, utilizan la energía hidráulica para enrollar y desenrollar cables o cuerdas, lo que les permite levantar, arrastrar o mover objetos pesados de manera precisa y segura.\n\n Ampliamente utilizados en diversas industrias y aplicaciones, como la construcción, la minería, la agricultura, la pesca y la industria marítima, debido a su capacidad para proporcionar una gran fuerza de tracción y control sobre las cargas. ",
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
        "Su función principal es proteger la bomba y otros componentes del sistema de partículas y contaminantes que pueden estar presentes en el fluido hidráulico.\n\n Al eliminar estos contaminantes antes de que ingresen a la bomba, el filtro de succión hidráulica ayuda a prevenir daños y desgaste prematuro en los componentes del sistema, lo que puede llevar a fallas costosas y tiempo de inactividad.",
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
        "Estas bombas constan de dos engranajes, uno interno y otro externo, que giran en conjunto para crear cámaras que aspiran y expulsan fluido hidráulico.\n\n A medida que los engranajes giran, el fluido es atrapado en las cámaras formadas entre los dientes de los engranajes y la carcasa de la bomba, y luego es forzado a salir hacia el sistema hidráulico. Las bombas de piñón hidráulicas son conocidas por su simplicidad, fiabilidad y eficiencia en la generación de flujo de fluido hidráulico. ",
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
        "Sistema complejo diseñado para proporcionar la fuerza necesaria para levantar y bajar cargas pesadas en aplicaciones como elevadores de vehículos, plataformas elevadoras y montacargas.\n\n Estos sistemas funcionan mediante la transmisión de presión a través de fluidos, generalmente aceite hidráulico, que se bombea a través de cilindros hidráulicos para generar movimiento lineal.",
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
        "Dispositivos esenciales en los sistemas hidráulicos de elevadores que permiten controlar y regular el flujo de fluido hidráulico y la presión en el sistema.\n\n Estas válvulas juegan un papel crucial en la operación segura y eficiente de los elevadores, ya que determinan la velocidad, dirección y precisión del movimiento.\n\n Existen varios tipos de válvulas utilizadas en elevadores, incluyendo válvulas de control de flujo, control de presión, dirección, seguridad y retención, cada una con funciones específicas para garantizar el funcionamiento adecuado del sistema hidráulico.",
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
        "Componente hidráulico avanzado que combina la funcionalidad de una válvula de alivio y una electroválvula en una sola unidad.\n\n La CETOP 3 es un estándar para montaje de válvulas hidráulicas, y esta subplaca se diseña para integrarse perfectamente en sistemas hidráulicos complejos.\n\n La subplaca incluye una válvula de alivio que protege el sistema hidráulico de sobrepresiones, evitando daños a los componentes y garantizando la seguridad.\n\n La electroválvula, por otro lado, permite controlar el flujo de fluido hidráulico de manera precisa y remota, facilitando la automatización y el control del sistema.\n\n Esta combinación de funciones en una sola unidad reduce la complejidad del sistema y mejora su eficiencia.",
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
        "Una electroválvula direccional es un componente clave en sistemas hidráulicos y neumáticos que permite controlar la dirección del flujo de fluido de manera precisa y eficiente.\n\n Estas válvulas están diseñadas para dirigir el flujo hacia diferentes partes del sistema, permitiendo realizar diversas funciones como avanzar, retroceder, subir o bajar.",
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
        "Componente crítico en sistemas hidráulicos que se encarga de limpiar el fluido hidráulico antes de que regrese al tanque.\n\n Estos filtros están diseñados para capturar partículas y contaminantes que pueden haberse acumulado en el fluido durante su circulación por el sistema, lo que ayuda a mantener la limpieza y la calidad del fluido.\n\n Al eliminar estos contaminantes, los filtros de retorno sobre tanque protegen los componentes del sistema hidráulico de daños y desgaste prematuro.",
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
        "Dispositivo avanzado que utiliza sensores térmicos para detectar el nivel de líquidos en un tanque o recipiente.\n\n Estos dispositivos funcionan aprovechando la diferencia de temperatura entre el líquido y el vapor o gas que se encuentra por encima de el.\n\n Al medir la temperatura en diferentes puntos del tanque, el termovisor de nivel puede determinar con precisión el nivel del líquido, incluso en condiciones de proceso difíciles.\n\n Esto los hace ideales para aplicaciones en industrias como la química, petroquímica y de procesamiento de alimentos, donde la medición precisa del nivel de líquidos es crucial para la seguridad y la eficiencia del proceso.",
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
        "Dispositivo diseñado para proporcionar la presión y flujo de fluido necesarios para operar sistemas hidráulicos pequeños y medianos.\n\n Estas bombas son ideales para aplicaciones donde el espacio es limitado y se requiere una fuente de energía hidráulica compacta y fiable.\n\n Las bombas hidráulicas para minicentralina suelen ser diseñadas para ser fáciles de instalar y mantener, y pueden ser utilizadas en una variedad de aplicaciones, incluyendo maquinaria industrial, equipos móviles y sistemas de automatización.",
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
        "Válvulas hidráulicas que permiten el flujo de fluido en una dirección y lo bloquean en la dirección opuesta.\n\n Estos dispositivos son fundamentales en sistemas hidráulicos, ya que evitan retrocesos y daños causados por flujos inversos.\n\n Al permitir el flujo en una dirección y bloquearlo en la otra, los checks en línea ayudan a mantener la estabilidad y la eficiencia del sistema hidráulico, evitando pérdidas de presión y daños a los componentes.",
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
        "Componentes críticos en sistemas hidráulicos y de almacenamiento de fluidos que permiten acceder al interior de un tanque o recipiente para llenarlo o vaciarlo.\n\n Estas tapas están diseñadas para proporcionar un punto de acceso seguro y controlado, mientras mantienen la integridad del sistema y evitan la entrada de contaminantes.\n\n Las tapas de llenado suelen estar equipadas con características como filtros, válvulas de ventilación y dispositivos de seguridad que ayudan a prevenir accidentes y garantizar la seguridad del personal y del equipo.\n\n Son ampliamente utilizadas en aplicaciones industriales, móviles y de almacenamiento de fluidos.",
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
        "Conjunto completo de piezas y componentes diseñados para reparar y mantener bombas hidráulicas Parker de la serie P2-145.\n\n Estos kits suelen incluir sellos, empaquetaduras, rodamientos y otros componentes críticos que pueden necesitar ser reemplazados durante el proceso de reparación.\n\n Al utilizar un kit de reparación original de Parker, los técnicos pueden asegurarse de que la bomba vuelva a funcionar de manera eficiente y segura, minimizando el tiempo de inactividad y reduciendo los costos de mantenimiento.",
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
        "Tipo de tapa de llenado diseñada para proporcionar un acceso seguro y fácil para llenar o vaciar fluidos en tanques o recipientes.\n\n Estas tapas se caracterizan por su diseño de rosca que se atornilla directamente sobre el tanque, creando un sello hermético que evita fugas y contaminación.\n\n Las tapas spin-on son ampliamente utilizadas en aplicaciones industriales, móviles y de equipos pesados debido a su facilidad de uso y mantenimiento.",
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
        "Bombas hidráulicas de alta calidad diseñadas para proporcionar un flujo de fluido constante y fiable en una variedad de aplicaciones, incluyendo equipos agrícolas, de construcción y otros vehículos pesados.\n\n Estas bombas están diseñadas para soportar las condiciones más exigentes y proporcionar un rendimiento óptimo y duradero. Con su diseño robusto y tecnología avanzada, las bombas de engranajes John Deere son ideales para aplicaciones que requieren una fuente de energía hidráulica fiable y eficiente.\n\n Tipo de tapa de llenado diseñada para proporcionar un acceso seguro y fácil para llenar o vaciar fluidos en tanques o recipientes.\n\n Estas tapas se caracterizan por su diseño de rosca que se atornilla directamente sobre el tanque, creando un sello hermético que evita fugas y contaminación.\n\n Las tapas spin-on son ampliamente utilizadas en aplicaciones industriales, móviles y de equipos pesados debido a su facilidad de uso y mantenimiento.",
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
        "Convierte la energía hidráulica en energía mecánica, proporcionando movimiento rotativo para una variedad de aplicaciones industriales y móviles.\n\n Estos motores están diseñados para ser eficientes y fiables, y suelen ser utilizados en sistemas hidráulicos que requieren un control preciso del movimiento y la velocidad.\n\n Con su diseño compacto y robusto, los motores hidráulicos BMSY son ideales para aplicaciones que requieren una fuente de energía fiable y eficiente, como en la industria de la construcción, la minería y la agricultura.",
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
        "Válvula hidráulica diseñada para proporcionar control y estabilidad en sistemas hidráulicos que involucran cargas pesadas o movimientos críticos.\n\n Estas válvulas funcionan permitiendo el flujo de fluido en una dirección mientras mantienen la presión en la otra dirección, lo que ayuda a prevenir la caída libre de cargas y a mantener el control del sistema.\n\n Con su diseño compacto y robusto, las válvulas contrabalance CBCA de Sun Hydraulics son ideales para aplicaciones industriales y móviles que requieren un control preciso y fiable del movimiento y la presión.",
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
        "Componente de sellado de alta calidad diseñado para proporcionar una unión hermética y segura en sistemas hidráulicos y neumáticos.\n\n Estos empaques están fabricados con materiales resistentes y duraderos que pueden soportar las condiciones más exigentes, como altas presiones y temperaturas.\n\n El empaque plato P50 es ideal para aplicaciones industriales y móviles que requieren un sellado fiable y eficiente, como en sistemas hidráulicos de maquinaria pesada, equipos de proceso y sistemas neumáticos.\n\n Su diseño preciso y su material de alta calidad aseguran una larga vida útil y un rendimiento óptimo.",
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
  ProductsInterface(
    id: "product-31",
    name: "kit neumático para bomba",
    shortDescription:
        "Conjunto de componentes diseñados para convertir una bomba hidráulica o de otro tipo en una bomba neumática, utilizando aire comprimido como fuente de energía.",
    longDescription:
        "Conjunto completo de componentes diseñados para convertir una bomba hidráulica o de otro tipo en una bomba neumática, utilizando aire comprimido como fuente de energía.\n\n Estos kits suelen incluir cilindros neumáticos, válvulas, tuberías y otros componentes necesarios para operar la bomba de manera segura y eficiente. Los kits neumáticos para bombas son ideales para aplicaciones industriales y móviles donde se requiere una fuente de energía neumática fiable y segura. Su uso es común en industrias como la manufactura, la minería y la construcción, donde se necesitan bombas para transferir fluidos o gases de manera eficiente.",
    image: "31-kit-neumático-para-bomba.jpg",
    rating: 5,
    tagsMenu: ["kit", "neumático"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-32",
    name: "Anillo de bronce P30",
    shortDescription:
        "Componente utilizado en aplicaciones hidráulicas y neumáticas para proporcionar una guía y soporte a los pistones o vástagos.",
    longDescription:
        "El anillo de bronce P30 es un componente de alta calidad utilizado en aplicaciones hidráulicas y neumáticas para proporcionar una guía y soporte a los pistones o vástagos.\n\n Estos anillos están fabricados con bronce, un material conocido por su resistencia al desgaste y su capacidad para soportar cargas pesadas.\n\n El anillo de bronce P30 es ideal para aplicaciones que requieren una guía precisa y un funcionamiento suave, como en cilindros hidráulicos, bombas y válvulas.\nSu diseño y material aseguran una larga vida útil y un rendimiento óptimo en condiciones de alta presión y carga.",
    image: "32-anillo-de-bronce-P30.jpg",
    rating: 5,
    tagsMenu: ["Anillo", "P30"],
    comments: commentsList,
    categories: [
      categoryList[10],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-33",
    name: "Bearing Carrier",
    shortDescription:
        "Componente que alberga y soporta rodamientos en sistemas mecánicos, proporcionando estabilidad y reduciendo la fricción.",
    longDescription:
        "Componente mecánico diseñado para albergar y soportar rodamientos en sistemas mecánicos complejos.\n\n Estos carriers proporcionan una base estable y segura para los rodamientos, permitiendo un funcionamiento suave y eficiente de los sistemas.\n\n Los Bearing Carriers son ideales para aplicaciones industriales y móviles que requieren una alta precisión y fiabilidad, como en maquinaria pesada, equipos de minería y construcción. Su diseño y material aseguran una larga vida útil y un rendimiento óptimo en condiciones de alta carga y velocidad.",
    image: "33-Bearing-Carrier.jpg",
    rating: 5,
    tagsMenu: ["Bearing"],
    comments: commentsList,
    categories: [
      categoryList[10],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-34",
    name: "Coupling connector",
    shortDescription:
        "Es un dispositivo que conecta dos ejes o componentes mecánicos, permitiendo la transmisión de potencia y movimiento.",
    longDescription:
        "Es un dispositivo mecánico diseñado para conectar dos ejes o componentes mecánicos, permitiendo la transmisión de potencia y movimiento entre ellos.\n\n Estos dispositivos son ideales para aplicaciones industriales y móviles que requieren una conexión segura y fiable entre componentes mecánicos.\n\n Son adecuados para aplicaciones que involucran alta torsión y velocidad, como en maquinaria pesada, bombas y motores.\n Su diseño y material aseguran una larga vida útil y un rendimiento óptimo en condiciones exigentes.",
    image: "34-Coupling-connector.jpg",
    rating: 5,
    tagsMenu: ["Coupling"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-35",
    name: "Bomba montacarga",
    shortDescription:
        "Es un componente hidráulico que proporciona la potencia necesaria para operar sistemas hidráulicos, permitiendo la elevación y el descenso de cargas pesadas.",
    longDescription:
        "Es un componente hidráulico diseñado para suministrar un flujo constante de fluido hidráulico a alta presión, lo que permite un funcionamiento suave y eficiente en aplicaciones industriales y móviles.\n\n Está fabricado con materiales resistentes y duraderos que aseguran una larga vida útil y un rendimiento óptimo en condiciones de trabajo exigentes.",
    image: "35-Bomba-montacarga.jpg",
    rating: 5,
    tagsMenu: ["Bomba"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-36",
    name: "Piñon Principal",
    shortDescription:
        "Es un componente mecánico que transmite la potencia y el movimiento en sistemas de transmisión.",
    longDescription:
        "Es un componente mecánico crítico que transmite la potencia y el movimiento en sistemas de transmisión complejos, diseñado para soportar altas cargas y velocidades.\n\n Está fabricado con materiales de alta resistencia y durabilidad, asegurando una larga vida útil y un rendimiento óptimo en aplicaciones industriales y móviles.",
    image: "36-Piñon-Principal.jpg",
    rating: 5,
    tagsMenu: ["Piñon"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-37",
    name: "Tapa Delantera Izquierda para Montacargas",
    shortDescription:
        "Es un componente que cubre y protege la parte delantera izquierda de una montacargas, proporcionando seguridad y durabilidad.",
    longDescription:
        "Es un componente diseñado para cubrir y proteger la parte delantera izquierda de una montacargas, fabricado con materiales resistentes y duraderos que pueden soportar las condiciones de trabajo exigentes en entornos industriales y de almacenamiento.\n\n Su diseño y material aseguran una larga vida útil y un rendimiento óptimo.",
    image: "37_Tapa-Delantera-Izquierda-para-Montacargas.jpg",
    rating: 5,
    tagsMenu: ["Tapa"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-38",
    name: "Buje para Bomba",
    shortDescription:
        "Es un componente que reduce la fricción y el desgaste en bombas hidráulicas.",
    longDescription:
        "Es un componente mecánico diseñado para reducir la fricción y el desgaste en bombas hidráulicas, permitiendo un funcionamiento suave y eficiente.\n\n Está fabricado con materiales resistentes al desgaste y la corrosión, asegurando una larga vida útil y un rendimiento óptimo en condiciones de alta presión y velocidad.",
    image: "38-Buje-para-Bomba.jpg",
    rating: 5,
    tagsMenu: ["Buje"],
    comments: commentsList,
    categories: [
      categoryList[0],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-39",
    name: "Retenedor Bomba Pistón",
    shortDescription:
        "Es un componente que sella y retiene el fluido hidráulico dentro de la bomba de pistón.",
    longDescription:
        "Es un componente crítico que sella y retiene el fluido hidráulico dentro de la bomba de pistón, evitando fugas y pérdidas de presión.\n\n Está diseñado para soportar altas presiones y velocidades, y está fabricado con materiales resistentes al desgaste y la corrosión, asegurando una larga vida útil y un rendimiento óptimo.",
    image: "39-Retenedor-Bomba-Pistón.jpg",
    rating: 5,
    tagsMenu: ["Retenedor"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-40",
    name: "Cartucho ON OFF N/C",
    shortDescription:
        "Es un componente que controla el flujo de fluido o aire en un sistema, permitiendo o bloqueando el paso según su configuración.",
    longDescription:
        "Es un componente de control que funciona como una válvula de encendido y apagado (ON/OFF) normalmente cerrada (N/C), diseñado para controlar el flujo de fluido o aire en sistemas hidráulicos o neumáticos.\n\n Está fabricado con materiales resistentes y duraderos que aseguran una larga vida útil y un rendimiento óptimo en condiciones de trabajo exigentes.",
    image: "40-Cartucho-ON-OFF-N-C.jpg",
    rating: 5,
    tagsMenu: ["Cartucho", "ON", "OFF"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-41",
    name: "Manguera con HG",
    shortDescription:
        "Es una manguera flexible diseñada para transportar fluidos a alta presión, con un diámetro interior de 3/8 de pulgada.",
    longDescription:
        "Es una manguera hidráulica flexible diseñada para transportar fluidos a alta presión en sistemas hidráulicos, con un diámetro interior de 3/8 de pulgada.\n\n Está fabricada con materiales resistentes a la presión, la corrosión y el desgaste, asegurando una larga vida útil y un rendimiento óptimo en aplicaciones industriales y móviles.",
    image: "41-Manguera-con-HG.jpg",
    rating: 5,
    tagsMenu: ["Manguera", "HG"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-42",
    name: "Campana GRUPO 2",
    shortDescription:
        "Es un componente eléctrico que forma parte de un sistema de arranque o control, posiblemente relacionado con un motor de 3 HP.",
    longDescription:
        "Es un componente eléctrico conocido como 'campana' o 'contactor', diseñado para controlar y proteger motores eléctricos, en este caso, de 3 caballos de fuerza (HP) y perteneciente al grupo 2.\n\n Está fabricado para asegurar un funcionamiento seguro y eficiente en aplicaciones industriales y comerciales.",
    image: "43-Acople-28mm-GRUPO-1.jpg",
    rating: 5,
    tagsMenu: ["Campana", "GRUPO"],
    comments: commentsList,
    categories: [
      categoryList[12],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-43",
    name: "Acople 28mm GRUPO 1",
    shortDescription:
        "Es un componente de conexión que se utiliza para unir tubos o mangueras de 28mm de diámetro.",
    longDescription:
        "Es un acople rápido o conexión diseñada para unir tubos o mangueras de 28mm de diámetro, perteneciente al grupo 1.\n\n Está fabricado para asegurar una conexión segura y eficiente en sistemas hidráulicos o neumáticos, permitiendo un fácil montaje y desmontaje.",
    image: "43-Campana-GRUPO-2.jpg",
    rating: 5,
    tagsMenu: ["Acople", "28mm"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-44",
    name: "Orbitol Abierto",
    shortDescription:
        "Es un componente hidráulico que controla la dirección y velocidad de un motor o cilindro hidráulico.",
    longDescription:
        "Es un componente hidráulico conocido como 'orbitrol' o 'válvula de control de dirección', diseñado para controlar la dirección y velocidad de motores o cilindros hidráulicos en sistemas de dirección hidráulica.\n\n El diseño 'abierto' permite un flujo de fluido más libre y eficiente, asegurando un funcionamiento suave y preciso en aplicaciones móviles y estacionarias.",
    image: "44-Orbitol-Abierto.jpg",
    rating: 5,
    tagsMenu: ["Acople", "28mm"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-45",
    name: "Subplaca Cetop 5",
    shortDescription:
        "Es una placa base para montar válvulas CETOP 5 en sistemas hidráulicos.",
    longDescription:
        "Es una subplaca diseñada para montar válvulas CETOP 5 en sistemas hidráulicos, proporcionando una base estable y segura para el montaje de estas válvulas.\n\n Está fabricada según las normas CETOP (Comité Europeo de Transmisiones Oleohidráulicas y Neumáticas) para asegurar compatibilidad y rendimiento óptimo en aplicaciones industriales.",
    image: "45-Subplaca-Cetop-5.jpg",
    rating: 5,
    tagsMenu: ["Subplaca", "Cetop"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-46",
    name: "Válvula Aisladora para Manómetro",
    shortDescription:
        "Es una válvula que aísla y protege el manómetro de sobrepresiones y daños.",
    longDescription:
        "Es una válvula diseñada para aislar y proteger los manómetros de sobrepresiones, picos de presión y daños causados por vibraciones o fluidos corrosivos.\n\n Permite realizar mantenimiento y calibración del manómetro sin afectar al sistema, asegurando una medición precisa y prolongando la vida útil del equipo.",
    image: "46-Válvula-Aisladora-para-Manómetro.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Manómetro"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-47",
    name: "Acumulador hidráulico",
    shortDescription:
        "Dispositivo que almacena energía en forma de fluido presurizado.",
    longDescription:
        "Es un recipiente que acumula fluido hidráulico bajo presión para compensar picos de demanda, absorber impactos o mantener la presión en un sistema hidráulico.\n\n Puede usar gas comprimido, un resorte o un peso para mantener la presión interna.",
    image: "47-Acumulador-hidráulico .jpg",
    rating: 5,
    tagsMenu: ["Acumulador", "hidráulico"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-48",
    name: "Filtro Hidráulico",
    shortDescription: "Elimina partículas contaminantes del fluido.",
    longDescription:
        "Este componente protege los circuitos hidráulicos eliminando impurezas como polvo, metal o residuos que pueden dañar válvulas, bombas o cilindros.\n\n Existen filtros de presión, de retorno y de succión, cada uno con aplicaciones específicas.",
    image: "48-Filtro-Hidráulico.jpg",
    rating: 5,
    tagsMenu: ["Filtro", "hidráulico"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-49",
    name: "Cilindro Hidráulico",
    shortDescription: "Actuador que produce movimiento lineal con presión.",
    longDescription:
        "Común en maquinaria industrial y de construcción, los cilindros hidráulicos transforman la energía del fluido en movimiento lineal.\n\n Tienen múltiples aplicaciones, desde brazos mecánicos hasta sistemas de elevación.",
    image: "49-Cilindro-Hidráulico.jpg",
    rating: 5,
    tagsMenu: ["Cilindro", "hidráulico"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-50",
    name: "Válvula de Bola",
    shortDescription:
        "Controla el paso del fluido mediante una esfera perforada.",
    longDescription:
        "Este tipo de válvula utiliza una bola con un orificio central que, al girar, permite o bloquea el paso del fluido.\n\n Es conocida por su durabilidad y sellado hermético, siendo ideal para aplicaciones de encendido/apagado rápido.",
    image: "50-Válvula-de-bola.jpg",
    rating: 5,
    tagsMenu: ["Válvula"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-51",
    name: "Válvula de Mariposa",
    shortDescription: "Regula el flujo mediante un disco giratorio.",
    longDescription:
        "La válvula de mariposa utiliza un disco montado en un eje que gira para abrir o cerrar el paso del fluido.\n\n Es compacta, ligera y adecuada para controlar grandes volúmenes de fluido con baja presión.",
    image: "51-Válvula-de-Mariposa.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Mariposa"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-52",
    name: "Válvula de Aguja",
    shortDescription:
        "Permite ajustes precisos del flujo en sistemas de baja presión.",
    longDescription:
        "Esta válvula tiene un vástago cónico que se inserta en un asiento, permitiendo un control fino del flujo.\n\n Es ideal para aplicaciones donde se requiere una regulación precisa del caudal.",
    image: "52-Válvula-Solenoide.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Aguja"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-53",
    name: "Válvula Solenoide",
    shortDescription: "Controla el flujo mediante una señal eléctrica.",
    longDescription:
        "Una válvula solenoide utiliza un electroimán para mover un émbolo que abre o cierra el paso del fluido.\n\n Es común en sistemas automatizados donde se requiere control remoto del flujo.",
    image: "53-Válvula-de-Aguja.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Solenoide"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-54",
    name: "Válvula Proporcional",
    shortDescription:
        "Regula el flujo o presión de manera continua según una señal eléctrica.",
    longDescription:
        "A diferencia de las válvulas todo/nada, las válvulas proporcionales permiten un control variable del flujo o presión en función de una señal eléctrica, ofreciendo una respuesta más precisa y suave en sistemas hidráulicos complejos.",
    image: "54-válvula-proporcional.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Proporcional"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-55",
    name: "Válvula de Cartucho",
    shortDescription:
        "Diseñada para ser insertada en cavidades estándar, facilitando el mantenimiento.",
    longDescription:
        "Estas válvulas compactas se montan dentro de bloques o manifolds, permitiendo configuraciones modulares y simplificando el diseño de sistemas hidráulicos.\n\n Son comunes en maquinaria móvil e industrial.",
    image: "55-válvula-de-cartucho.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Cartucho"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-56",
    name: "Válvula de Contrabalance",
    shortDescription:
        "Mantiene la carga en posición cuando se detiene el flujo.",
    longDescription:
        "Esta válvula evita el movimiento indeseado de una carga cuando el flujo se interrumpe, proporcionando estabilidad y seguridad en aplicaciones como grúas o plataformas elevadoras.",
    image: "56-válvula-de-contrabalance.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Contrabalance"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-57",
    name: "Válvula de Secuencia",
    shortDescription:
        "Controla el orden de operación de distintos actuadores en un sistema hidráulico.",
    longDescription:
        "La válvula de secuencia permite que un actuador funcione solo después de que otro haya completado su movimiento.\n\n Esto se logra manteniendo una presión específica hasta que se alcanza un punto determinado, asegurando una operación ordenada y segura en sistemas complejos.",
    image: "57-válvula-de-secuencia.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Secuencia"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-58",
    name: "Válvula Reductora de Presión",
    shortDescription:
        "Disminuye la presión del fluido a un nivel seguro para componentes sensibles.",
    longDescription:
        "Esta válvula mantiene una presión de salida constante menor que la de entrada, protegiendo componentes que no pueden soportar altas presiones.\n\n Es esencial en sistemas donde se requiere una presión específica para ciertos elementos.",
    image: "58-válvula-reductora-de-presión.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Reductora"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-59",
    name: "Válvula de Cierre Rápido",
    shortDescription:
        "Permite detener rápidamente el flujo de fluido en situaciones de emergencia.",
    longDescription:
        "Diseñada para cerrar el paso del fluido de manera instantánea, esta válvula es crucial en sistemas donde una parada rápida puede prevenir daños mayores o garantizar la seguridad del personal.",
    image: "59-válvula-de-cierre-rápido.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Cierre"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-60",
    name: "Válvula de Purga",
    shortDescription: "Elimina aire o contaminantes del sistema hidráulico.",
    longDescription:
        "La válvula de purga se utiliza para liberar aire atrapado o impurezas del sistema, asegurando un funcionamiento eficiente y evitando daños por cavitación o corrosión.",
    image: "60-válvula-de-purga.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Purga"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-61",
    name: "Válvula de Retención de Disco",
    shortDescription:
        "Utiliza un disco para controlar el flujo en una sola dirección.",
    longDescription:
        "Similar a la válvula de retención de bola, pero utiliza un disco que se mueve para permitir o bloquear el flujo.\n\n Ofrece un cierre más suave y es adecuada para aplicaciones con cambios frecuentes de flujo.",
    image: "61-válvula-de-retención-de-disco.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "Retención"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-62",
    name: "Codo",
    shortDescription: "Conector que cambia la dirección del flujo",
    longDescription:
        "Pieza utilizada para redirigir el flujo del fluido hidráulico en ángulos específicos (comúnmente 90° o 45°), permitiendo una instalación eficiente en espacios reducidos o complejos.",
    image: "62-Codo.jpg",
    rating: 5,
    tagsMenu: ["Codo", "Conectores"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-63",
    name: "Te (T)",
    shortDescription: "Une tres líneas hidráulicas",
    longDescription:
        "Conector en forma de 'T' que permite dividir el flujo hidráulico en dos ramas o combinar dos flujos en uno solo, muy útil en redes ramificadas.",
    image: "63-Te.jpg",
    rating: 5,
    tagsMenu: ["Te", "Conector"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-64",
    name: "Unión recta",
    shortDescription: "Conecta dos tubos en línea recta.",
    longDescription:
        "Pieza que une firmemente dos secciones de tubería o manguera en línea recta para asegurar la continuidad del circuito hidráulico sin desvíos.",
    image: "64-Unión-Recta.jpg",
    rating: 5,
    tagsMenu: ["Unión", "Conector"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-65",
    name: "Reducción (reductor)",
    shortDescription: "Une tubos de diferentes diámetros.",
    longDescription:
        "Adaptador que permite conectar una tubería o manguera de mayor diámetro a una de menor (o viceversa), regulando el caudal y presión del sistema.",
    image: "65-Reductor.jpg",
    rating: 5,
    tagsMenu: ["Te", "líneas"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-66",
    name: "Niple",
    shortDescription: "Tubo corto roscado en ambos extremos.",
    longDescription:
        "Cilindro metálico con roscas en ambos extremos usado para conectar componentes hidráulicos de forma rígida y segura.",
    image: "66-Niple-Hidráulico.jpg",
    rating: 5,
    tagsMenu: ["Niple", "Tubo corto"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-67",
    name: "Manguito",
    shortDescription: "Conecta dos elementos roscados.",
    longDescription:
        "Acoplador cilíndrico que permite unir dos extremos roscados, especialmente útil en zonas de mantenimiento o reemplazo frecuente.",
    image: "67-Manguito.jpg",
    rating: 5,
    tagsMenu: ["Niple", "Tubo corto"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-68",
    name: "Brida hidráulica",
    shortDescription: "Conexión plana atornillada para unir tubos.",
    longDescription:
        "Elemento circular o cuadrado con orificios para pernos, que permite una conexión firme y estanca entre tramos de tubería hidráulica, ideal en sistemas de alta presión.",
    image: "68-Brida-Hidráulica.jpg",
    rating: 5,
    tagsMenu: ["Brida", "Tubos"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-69",
    name: "Acople rápido",
    shortDescription: "Permite conexión y desconexión rápida.",
    longDescription:
        "Dispositivo que conecta mangueras o componentes sin necesidad de herramientas, muy usado para cambios rápidos en equipos móviles o accesorios.",
    image: "69-Acople-Rápido.jpg",
    rating: 5,
    tagsMenu: ["Acople", "Tubos"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-70",
    name: "Válvula de retención",
    shortDescription: "Permite flujo en una sola dirección.",
    longDescription:
        "Evita el retroceso del fluido en una línea hidráulica, asegurando que el flujo se mantenga en la dirección deseada para proteger componentes sensibles.",
    image: "70-Válvula-de-retención.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "retención"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-71",
    name: "Válvula de bola",
    shortDescription: "Controla el paso del fluido con una esfera.",
    longDescription:
        "Válvula interna con una bola perforada que gira para abrir o cerrar el paso del fluido, proporcionando un control rápido y confiable.",
    image: "71-Válvula-de-bola.jpg",
    rating: 5,
    tagsMenu: ["Válvula", "bola"],
    comments: commentsList,
    categories: [
      categoryList[2],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-72",
    name: "Adaptador roscado",
    shortDescription: "Une piezas con diferentes tipos de rosca.",
    longDescription:
        "Permite la conexión entre componentes con roscas incompatibles (por ejemplo, NPT a BSP), asegurando estanqueidad.",
    image: "72-Adaptador-roscado.jpg",
    rating: 5,
    tagsMenu: ["Adaptador", "bola"],
    comments: commentsList,
    categories: [
      categoryList[6],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-73",
    name: "Tapa hidráulica",
    shortDescription: "Sella extremos no usados.",
    longDescription:
        "Componente que bloquea la salida de un puerto hidráulico para evitar fugas o contaminaciones cuando no está en uso.",
    image: "73-Tapa-hidráulica.jpg",
    rating: 5,
    tagsMenu: ["Tapa", "hidráulica"],
    comments: commentsList,
    categories: [
      categoryList[6],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-74",
    name: "Tapón de purga",
    shortDescription: "Permite liberar aire del sistema.",
    longDescription:
        "Tornillo o válvula pequeña que se abre temporalmente para eliminar bolsas de aire y mejorar el rendimiento hidráulico.",
    image: "74-Tapón-de-purga.jpg",
    rating: 5,
    tagsMenu: ["Tapa", "hidráulica"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-75",
    name: "Abrazadera hidráulica",
    shortDescription: "Sujeta mangueras y tubos.",
    longDescription:
        "Pieza metálica o plástica que mantiene firmes los conductos hidráulicos, minimizando vibraciones y protegiendo contra desgaste.",
    image: "75-Abrazadera-hidráulica.jpg",
    rating: 5,
    tagsMenu: ["Abrazadera", "hidráulica"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-76",
    name: "Conector giratorio",
    shortDescription: "Permite rotación sin fugas.",
    longDescription:
        "Unión especial que permite rotar componentes conectados (como brazos móviles) sin desconectar el flujo hidráulico.",
    image: "76-Conector-giratorio.jpg",
    rating: 5,
    tagsMenu: ["Conector", "componentes"],
    comments: commentsList,
    categories: [
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-77",
    name: "Acumulador de vejiga",
    shortDescription: "Almacena energía con nitrógeno.",
    longDescription:
        "Acumulador que usa una vejiga interna con gas para almacenar presión hidráulica y compensar variaciones de caudal.",
    image: "77-Acumulador-de-vejiga.jpg",
    rating: 5,
    tagsMenu: ["Acumulador", "presión"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-78",
    name: "Acumulador de pistón",
    shortDescription: "Usa pistón para separar gas y fluido.",
    longDescription:
        "Tiene un pistón móvil que separa gas presurizado del aceite, regulando presión y absorbiendo golpes.",
    image: "78-Acumulador-de-pistón.jpg",
    rating: 5,
    tagsMenu: ["Acumulador", "presión"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-79",
    name: "Indicador de nivel",
    shortDescription: "Muestra cantidad de fluido.",
    longDescription:
        "Dispositivo visual montado en el tanque que indica el nivel del fluido hidráulico para control y mantenimiento.",
    image: "79-Indicador-de-nivel.jpg",
    rating: 5,
    tagsMenu: ["Acumulador", "presión"],
    comments: commentsList,
    categories: [
      categoryList[6],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-80",
    name: "Indicador de filtro obstruido",
    shortDescription: "Alerta cuando el filtro está sucio.",
    longDescription:
        "Sensor o señal mecánica que muestra si el filtro hidráulico necesita limpieza o reemplazo.",
    image: "80-Indicador-de-filtro-obstruido.jpg",
    rating: 5,
    tagsMenu: ["Indicador", "filtro"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-81",
    name: "Protector térmico",
    shortDescription: "Controla la temperatura del sistema.",
    longDescription:
        "Interruptor o sensor que apaga el sistema o emite una alarma si el fluido supera una temperatura segura.",
    image: "81-Protector-térmico.jpg",
    rating: 5,
    tagsMenu: ["Indicador", "filtro"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-82",
    name: "Sensor de presión",
    shortDescription: "Detecta presión y envía señal.",
    longDescription:
        "Transductor que convierte la presión hidráulica en señal eléctrica para monitoreo en sistemas automatizados.",
    image: "82-Sensor-de-presión.jpg",
    rating: 5,
    tagsMenu: ["Sensor", "presión"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-83",
    name: "Sensor de caudal",
    shortDescription: "Mide velocidad del flujo.",
    longDescription:
        "Detecta la cantidad de fluido que pasa por un conducto por unidad de tiempo, útil en procesos precisos",
    image: "83-Sensor-de-caudal.jpg",
    rating: 5,
    tagsMenu: ["Sensor", "presión"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-84",
    name: "Acoplamiento flexible",
    shortDescription: "Une ejes con cierta movilidad.",
    longDescription:
        "Conecta motores o bombas con cilindros o transmisiones, permitiendo pequeñas desalineaciones sin daño.",
    image: "84-Acoplamiento-flexible.jpg",
    rating: 5,
    tagsMenu: ["Acoplamiento", "flexible"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-85",
    name: "Engranaje de transmisión",
    shortDescription: "Transfiere movimiento mecánico.",
    longDescription:
        "Pieza que se acopla a motores hidráulicos para transmitir potencia a otros elementos mecánicos.",
    image: "85-Engranaje-de-transmisión.jpg",
    rating: 5,
    tagsMenu: ["Acoplamiento", "flexible"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-86",
    name: "Placa de conexión (manifold)",
    shortDescription: "Integra múltiples conexiones en un bloque.",
    longDescription:
        "Bloque de aluminio o acero mecanizado que permite centralizar conexiones hidráulicas, reduciendo mangueras y espacio.",
    image: "86-Placa-de-conexión.jpg",
    rating: 5,
    tagsMenu: ["Placa", "manifold"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-87",
    name: "Tope mecánico de cilindro",
    shortDescription: "Limita el recorrido del pistón.",
    longDescription:
        "Dispositivo físico que impide que un cilindro hidráulico sobrepase cierto punto, protegiendo componentes.",
    image: "87-Tope-mecánico-de-cilindro.jpg",
    rating: 5,
    tagsMenu: ["Placa", "manifold"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-88",
    name: "Limitador de carrera",
    shortDescription: "Controla hasta dónde se extiende un actuador.",
    longDescription:
        "Mecanismo ajustable que restringe el recorrido de un cilindro para evitar impactos o posiciones no deseadas.",
    image: "88-Limitador-de-carrera.jpg",
    rating: 5,
    tagsMenu: ["Placa", "manifold"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-89",
    name: "Cojinete guía",
    shortDescription: "Alinea el eje del cilindro.",
    longDescription:
        "Pieza de soporte que mantiene alineado el vástago de un cilindro, reduciendo el desgaste y prolongando su vida útil.",
    image: "89-Cojinete-guía.jpg",
    rating: 5,
    tagsMenu: ["Placa", "manifold"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-90",
    name: "Retén hidráulico",
    shortDescription: "Evita fugas en el vástago",
    longDescription:
        "Sello interno en cilindros y bombas que impide el escape de fluido por el vástago móvil.",
    image: "90-Retén-hidráulico.jpg",
    rating: 5,
    tagsMenu: ["Placa", "manifold"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-91",
    name: "Junta tórica (O-ring)",
    shortDescription: "Sella uniones contra fugas.",
    longDescription:
        "Aro de goma redondo que se comprime entre dos superficies para crear una barrera hermética contra el fluido.",
    image: "91-Junta-tórica .jpg",
    rating: 5,
    tagsMenu: ["Junta", "superficies"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-92",
    name: "Sensor de posición",
    shortDescription: "Detecta la posición de un actuador.",
    longDescription:
        "Dispositivo que mide y reporta la posición exacta de un cilindro o componente móvil en un sistema hidráulico para control preciso.",
    image: "92-Sensor-de-posición.jpg",
    rating: 5,
    tagsMenu: ["Junta", "superficies"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-93",
    name: "Filtro de malla",
    shortDescription: "Filtra partículas grandes.",
    longDescription:
        "Elemento de filtro que retiene partículas sólidas grandes para proteger componentes sensibles del sistema hidráulico.",
    image: "93-Filtro-de-malla.jpg",
    rating: 5,
    tagsMenu: ["Junta", "superficies"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-94",
    name: "Racores hidráulicos",
    shortDescription: "Conectan mangueras y tubos.",
    longDescription:
        "Accesorios que aseguran la unión firme y estanca entre diferentes tipos de mangueras y tuberías hidráulicas.",
    image: "94-Racores-hidráulicos.jpg",
    rating: 5,
    tagsMenu: ["Racores", "mangueras"],
    comments: commentsList,
    categories: [
      categoryList[14],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface( 
    id: "product-95",
    name: "Filtro de succión",
    shortDescription: "Protege la bomba de partículas.",
    longDescription:
        "Filtro colocado antes de la bomba para evitar que partículas grandes entren y dañen la bomba hidráulica.",
    image: "95-Filtro-de-succión.jpg",
    rating: 5,
    tagsMenu: ["Racores", "mangueras"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-96",
    name: "Acoplamiento rígido",
    shortDescription: "Une elementos sin movimiento.",
    longDescription:
        "Conecta ejes o componentes hidráulicos sin permitir movimiento relativo, garantizando alineación precisa.",
    image: "96-Acoplamiento-rígido.jpg",
    rating: 5,
    tagsMenu: ["Acoplamiento"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-97",
    name: "Muelle o resorte de retorno",
    shortDescription: "Regresa pistón o válvula a posición inicial.",
    longDescription:
        "Elemento mecánico que aplica fuerza para devolver componentes a su estado inicial tras operación hidráulica.",
    image: "96-Acoplamiento-rígido.jpg",
    rating: 5,
    tagsMenu: ["Acoplamiento"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-98",
    name: "Vástago de cilindro",
    shortDescription: "Transmite fuerza del pistón.",
    longDescription:
        "Barra metálica que conecta el pistón con la carga, transmitiendo la fuerza generada por el fluido.",
    image: "98-Vástago-de-cilindro.jpg",
    rating: 5,
    tagsMenu: ["Acoplamiento"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-99",
    name: "Cuerpo de cilindro",
    shortDescription: "Contiene el pistón y fluido.",
    longDescription:
        "Parte principal del cilindro donde se desplaza el pistón, soportando la presión hidráulica.",
    image: "99-Cuerpo-de-cilindro.jpg",
    rating: 5,
    tagsMenu: ["cilindro"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-100",
    name: "Sensor de temperatura",
    shortDescription: "Mide la temperatura del fluido.",
    longDescription:
        "Dispositivo que detecta y reporta la temperatura del aceite hidráulico para evitar sobrecalentamientos.",
    image: "100-Sensor-de-temperatura.jpg",
    rating: 5,
    tagsMenu: ["cilindro"],
    comments: commentsList,
    categories: [
      categoryList[4],
    ],
    promotion: false,
    amount: 1,
  ),
];
