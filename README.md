# Mi Portafolio - Abdul Aboujokh

App de portafolio personal hecha con Flutter para la materia de Programación III.

## Descripción

Este proyecto es una aplicación móvil tipo portafolio personal donde muestro información sobre mí, lo que hago, y mis hobbies. La app tiene un diseño oscuro y limpio con una paleta de colores basada en azul oscuro y grafito.

## Secciones

- **Inicio**: Pantalla principal con mi información básica y acceso a las demás secciones.
- **Sobre mí**: Información personal, quién soy y de dónde vengo.
- **¿Qué hago?**: Las tecnologías que manejo y lo que estoy aprendiendo.
- **Hobbies**: Mis pasatiempos fuera de la programación.
- **Contacto/Firma**: Pantalla con mi firma como desarrollador e info de contacto (accesible desde el AppBar).

## Estructura del proyecto

```
lib/
├── main.dart
├── models/
│   └── section_info.dart
├── routes/
│   └── app_routes.dart
├── screens/
│   ├── screens.dart
│   ├── home_screen.dart
│   ├── about_screen.dart
│   ├── work_screen.dart
│   ├── hobbies_screen.dart
│   └── contact_screen.dart
├── themes/
│   └── app_themes.dart
└── widgets/
    ├── widgets.dart
    ├── header_card.dart
    ├── section_tile.dart
    └── footer_widget.dart
```

## Dependencias

- `google_fonts` - Para las fuentes tipográficas
- `font_awesome_flutter` - Para los iconos
- `url_launcher` - Para abrir enlaces externos

## Cómo correr

1. Clonar el repositorio
2. Ejecutar `flutter pub get`
3. Ejecutar `flutter run`

## Notas

- Repositorio: https://github.com/Abduljokh2211/mi-portafolio
- El proyecto usa Flutter 3.13+

## Autor

Abdul Aboujokh (@Abduljokh2211) - 2026
