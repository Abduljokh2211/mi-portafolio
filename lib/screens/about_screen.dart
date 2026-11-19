import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';
import 'package:mi_portafolio/widgets/footer_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre mí'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          // foto de perfil arriba
          Center(
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppThemes.accentBlue, width: 3),
                image: const DecorationImage(
                  image: AssetImage('assets/img/perfil.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // nombre
          Text(
            'Abdul Aboujokh',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 6),
          Text(
            'Estudiante de Desarrollo de Software',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppThemes.textGray,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 24),

          // sobre mi - texto
          _buildInfoCard(
            context,
            '¿Quién soy?',
            'Soy Abdul Aboujokh, tengo 20 años y actualmente me encuentro '
            'estudiando programación. Me apasiona el desarrollo de aplicaciones '
            'y siempre estoy buscando aprender cosas nuevas en el mundo de la tecnología. '
            'Nací en Venezuela y me considero una persona bastante curiosa, me gusta '
            'entender cómo funcionan las cosas por dentro.',
          ),

          const SizedBox(height: 12),

          _buildInfoCard(
            context,
            'Mi camino',
            'Desde chamo siempre me llamó la atención la computación. Empecé trasteando '
            'cosas básicas en la PC de mi casa y poco a poco fui descubriendo que lo mío '
            'era programar. Hoy en día estoy enfocado en Flutter y desarrollo móvil, '
            'aunque también he tocado un poco de web y backend.',
          ),

          const SizedBox(height: 12),

          // datos rapidos
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Datos rápidos', style: TextStyle(
                    color: AppThemes.accentBlue,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
                  const Divider(color: AppThemes.borderColor),
                  _datoRapido('📍', 'Venezuela'),
                  _datoRapido('🎂', '20 años'),
                  _datoRapido('💻', 'Desarrollo móvil'),
                  _datoRapido('🗣️', 'Español / Inglés'),
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

  Widget _buildInfoCard(BuildContext context, String titulo, String contenido) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(titulo, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppThemes.accentBlue,
            )),
            const SizedBox(height: 8),
            Text(contenido, style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.5,
            )),
          ],
        ),
      ),
    );
  }

  Widget _datoRapido(String emoji, String texto) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 10),
          Text(texto, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
