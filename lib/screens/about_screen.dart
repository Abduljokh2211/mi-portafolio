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

          // foto de perfil con borde azul
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

          Text(
            'Abdul Aboujokh',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            'Estudiante de Desarrollo de Software',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppThemes.textGray,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 24),

          // seccion quien soy
          _buildInfoCard(
            context,
            '¿Quién soy?',
            'Soy Abdul Aboujokh, tengo 19 y el fin de semana cumplo 20. '
            'Me encuentro estudiando en el séptimo trimestre, aunque estoy algo atrasado por choques de horario. '
            'Me gusta bastante jugar videojuegos de todo tipo, pero sobre todo FPS, terror estilo Resident Evil / The Last of Us, '
            'o de carreras como Forza Horizon.',
          ),

          const SizedBox(height: 12),

          // seccion un poco sobre mi
          _buildInfoCard(
            context,
            'Un poco sobre mí',
            'Desde primer año me empezó a llamar la atención el tema de la computación, '
            'y aprendí lo básico con mi primo las veces que venía a mi casa y me llamó '
            'tanto la atención que terminé decidiendo estudiar algo relacionado con programar.',
          ),

          const SizedBox(height: 12),

          // tarjeta de datos rapidos
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Datos rápidos',
                    style: TextStyle(
                      color: AppThemes.accentBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const Divider(color: AppThemes.borderColor),
                  _datoRapido('📍', 'Venezuela'),
                  _datoRapido('🎂', '19 años'),
                  _datoRapido('💻', 'Desarrollo de aplicaciones / páginas web en otros lenguajes'),
                  _datoRapido('🗣️', 'Español / Inglés / Árabe'),
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

  // metodo auxiliar para reutilizar el diseno de las tarjetas de texto
  Widget _buildInfoCard(BuildContext context, String titulo, String contenido) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppThemes.accentBlue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              contenido,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // widget para cada fila con emoji y texto (usamos Expanded para evitar desbordes)
  Widget _datoRapido(String emoji, String texto) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              texto,
              style: const TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
