import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';
import 'package:mi_portafolio/widgets/footer_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('¿Qué hago?'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // icono principal de la pantalla
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Column(
              children: [
                FaIcon(
                  FontAwesomeIcons.code,
                  size: 44,
                  color: AppThemes.accentBlue,
                ),
                SizedBox(height: 12),
                Text(
                  'Desarrollo de Software',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // tarjetas de habilidades y experiencia
          _skillCard(
            icon: FontAwesomeIcons.mobile,
            titulo: 'Desarrollo Móvil',
            descripcion: 'Actualmente enfocado en aprender Flutter y Dart para crear '
                'aplicaciones multiplataforma. Este portafolio es un reflejo de mi avance.',
          ),

          const SizedBox(height: 10),

          _skillCard(
            icon: FontAwesomeIcons.code,
            titulo: 'Python & C#',
            descripcion: 'He trabajado con Python para resolución de problemas y fundamentos lógicos. '
                'También cursé C# en Programación II, profundizando en programación orientada a objetos.',
          ),

          const SizedBox(height: 10),

          _skillCard(
            icon: FontAwesomeIcons.database,
            titulo: 'Bases de Datos',
            descripcion: 'Experiencia académica con MySQL y SQLite en proyectos universitarios, '
                'enfocándome en diseño relacional y consultas estructuradas.',
          ),

          const SizedBox(height: 10),

          _skillCard(
            icon: FontAwesomeIcons.github,
            titulo: 'Control de Versiones',
            descripcion: 'Uso constante de Git y GitHub para el versionado de proyectos '
                'y buenas prácticas de desarrollo de software.',
          ),

          const SizedBox(height: 20),

          // listado de tecnologias usando Wrap y chips personalizados
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tecnologías que uso',
                    style: TextStyle(
                      color: AppThemes.accentBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const Divider(color: AppThemes.borderColor),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _techChip('Flutter'),
                      _techChip('Dart'),
                      _techChip('Python'),
                      _techChip('C#'),
                      _techChip('HTML/CSS'),
                      _techChip('MySQL'),
                      _techChip('Git'),
                      _techChip('VS Code'),
                      _techChip('Firebase'),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),

          const FooterWidget(),
        ],
      ),
    );
  }

  // widget para construir cada tarjeta de habilidad
  // se usa FaIconData para los iconos de font_awesome_flutter
  Widget _skillCard({
    required FaIconData icon,
    required String titulo,
    required String descripcion,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppThemes.accentBlue.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: FaIcon(icon, color: AppThemes.accentBlue, size: 20),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    descripcion,
                    style: const TextStyle(
                      color: AppThemes.textGray,
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // chip sencillo para mostrar cada etiqueta de tecnologia
  Widget _techChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppThemes.accentBlue.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppThemes.accentBlue.withValues(alpha: 0.3)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: AppThemes.accentBlue,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
