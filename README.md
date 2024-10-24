# Basic App — Pragma × Flutter

Aplicación desarrollada con Flutter e inspirada en la [página de empleo](https://www.pragma.co/es/carrera/vacantes/) del sitio web de Pragma.

<img src="https://github.com/user-attachments/assets/b2c8ae0d-23e8-4347-a68f-67db7797de4f" width="250">
<img src="https://github.com/user-attachments/assets/c4413133-2094-4ed9-8648-d518aa2a207a" width="250">

> Este repositorio es personal y resuelve la Fase 2 de la Ruta de Crecimiento Práctica del Chapter Mobile.

## Motivación

En la página de empleo, se listan ordenadamente tarjetas que muestran vacantes. Cada tarjeta contiene un resumen, que consta de título, equipo y países; además, dos botones: uno para compartir la vacante en redes sociales y otro para ver los detalles de la vacante.

<img src="https://github.com/user-attachments/assets/96dc46e7-4bf2-4bd1-acae-251d9666b0ed" width="250">
<img src="https://github.com/user-attachments/assets/94a8e5b6-e9c5-4eda-a6b9-e7130da6ce65" width="250">

## Diseño visual

[Material 3](https://m3.material.io/) fue el sistema de diseño elegido e implementado, por su sencillez y robustez. Además el esquema de colores se definió a partir del color predominante de marca de Pragma: `ARGB(1, 100, 40, 205)`. Incluso la elección de botones y maquetación se basó fundamentalmente en este Sistema de Diseño.

## Diseño funcional

La aplicación consta de tres pantallas.

### Vacantes

Lista ordenadamente tarjetas que muestran vacantes. Cada tarjeta contiene un resumen, que consta de título, equipo y países; además, solo un botón, para ver los detalles de la vacante. El ordenamiento de las vacantes se obtiene comparando la urgencia de cada vacante, para posicionar primeramente aquellas que sean urgentes. Esta urgencia se puede evidenciar en que el título de la vacante en la tarjeta resalta más.

### Detalles

Amplía la información de una vacante al mostrar su descripción.

### Vacante

Crea o actualiza una vacante.
