# Basic App — Pragma × Flutter

Aplicación desarrollada con [Flutter](https://flutter.dev/) e inspirada en la [página de empleo](https://www.pragma.co/es/carrera/vacantes/) del sitio web de [Pragma](https://www.pragma.co/).

<img src="https://github.com/user-attachments/assets/b2c8ae0d-23e8-4347-a68f-67db7797de4f" width="250">
<img src="https://github.com/user-attachments/assets/c4413133-2094-4ed9-8648-d518aa2a207a" width="250">

> Este repositorio es personal y resuelve la Fase 2 de la Ruta de Crecimiento Práctica del Chapter Mobile.

## Inspiración

En la página de empleo, se listan ordenadamente tarjetas que muestran vacantes. Cada tarjeta contiene un resumen, que consta de título, equipo y países; además, dos botones: uno para compartir la vacante en redes sociales y otro para ver los detalles de la vacante.

<img src="https://github.com/user-attachments/assets/96dc46e7-4bf2-4bd1-acae-251d9666b0ed" width="250">
<img src="https://github.com/user-attachments/assets/94a8e5b6-e9c5-4eda-a6b9-e7130da6ce65" width="250">

## Diseño visual

[Material 3](https://m3.material.io/) fue el sistema de diseño elegido e implementado, por su sencillez y robustez. Además el esquema de colores se definió a partir del color predominante de marca: `ARGB(1, 100, 40, 205)`. Incluso la elección de botones y maquetación se basó fundamentalmente en este Sistema de Diseño, excepto la tipografía, que fue elección personal.

## Diseño funcional

La aplicación consta de tres pantallas.

[📀 Demo](https://github.com/user-attachments/assets/065e9d01-2c13-4db6-b53b-b3f929a9ff1e)

### Vacantes

Lista ordenadamente tarjetas que muestran vacantes. Cada tarjeta contiene un resumen, que consta de título, equipo y países; además, solo un botón, para ver los detalles de la vacante. El ordenamiento de las vacantes se obtiene comparando la urgencia de cada vacante, para posicionar primeramente aquellas que sean urgentes. Esta urgencia se puede evidenciar en que el título de la vacante en la tarjeta resalta más.

### Detalles

Amplía la información de una vacante al mostrar su descripción.

### Vacante (Form)

Crea o actualiza una vacante.

## Consideraciones técnicas

- 🍦 ¡Tanto _vanilla_ como fuere posible!
- 😶‍🌫️ Almacenamiento temporal de datos (RAM).
- 🫡 Distribución de responsabilidades en `Widgets` (`Screen`s vs. `View`s).

## Consideraciones no técnicas

- 🛞 No reinventar la rueda: construir sobre lo construido.
- 🧮 Menos es más: menos complejidad, más practicidad.
- 💜 Pragmático de corazón.

## Doctor de confianza

- ✅ Flutter (Channel stable, 3.24.3, on macOS 13.7 22H123 darwin-arm64, locale en-US)
- ✅ Android toolchain - develop for Android devices (Android SDK version 33.0.2)
- ✅ Xcode - develop for iOS and macOS (Xcode 15.2)
- ✅ Chrome - develop for the web
- ✅ Android Studio (version 2022.3)
- ✅ VS Code (version 1.94.2)
- ✅ Connected device (4 available)
- ✅ Network resources

## Acerca de

Asistí a la FlutterConf Latam el año pasado y tengo un pin de Dash con un sombrero vueltiao puesto... 😎
