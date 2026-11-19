import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_portafolio/widgets/header_card.dart';
import 'package:mi_portafolio/widgets/section_tile.dart';
import 'package:mi_portafolio/widgets/footer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Portafolio'),
        actions: [
          // boton en el appbar que lleva a la pantalla de firma y contacto
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.idCard, size: 18),
            tooltip: 'Contacto del dev',
            onPressed: () {
              // navegacion con pushNamed
              Navigator.pushNamed(context, '/contact');
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // tarjeta principal con la foto y datos basicos
          const HeaderCard(),

          const SizedBox(height: 20),

          // botones de navegacion hacia cada seccion
          SectionTile(
            title: 'Sobre mí',
            subtitle: 'Un poco de quién soy',
            icon: FontAwesomeIcons.user,
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),

          const SizedBox(height: 10),

          SectionTile(
            title: '¿Qué hago?',
            subtitle: 'Mi trabajo y lo que estudio',
            icon: FontAwesomeIcons.laptopCode,
            onTap: () {
              Navigator.pushNamed(context, '/work');
            },
          ),

          const SizedBox(height: 10),

          SectionTile(
            title: 'Hobbies',
            subtitle: 'Las cosas que disfruto',
            icon: FontAwesomeIcons.gamepad,
            onTap: () {
              Navigator.pushNamed(context, '/hobbies');
            },
          ),

          const SizedBox(height: 30),

          // pie de pagina con boton para contactar
          const FooterWidget(),
        ],
      ),
    );
  }
}
