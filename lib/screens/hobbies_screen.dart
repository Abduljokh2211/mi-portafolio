import 'package:flutter/material.dart';
import 'package:mi_portafolio/themes/app_themes.dart';
import 'package:mi_portafolio/widgets/footer_widget.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hobbies'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          Text(
            'Mis Pasatiempos',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          const Text(
            'Las cosas que disfruto hacer en mi tiempo libre',
            style: TextStyle(color: AppThemes.textGray, fontSize: 14),
          ),

          const SizedBox(height: 20),

          // Se usan cards independientes en lugar de imagenes de red para mantener la interfaz rapida y limpia
          _hobbyCard(
            emoji: '🎮',
            titulo: 'Videojuegos',
            subtitulo: 'CS2 · Fortnite · GTA',
            desc: 'Disfruto jugar al Counter-Strike 2 (CS2) y a Fortnite. '
                'También sigo de cerca sagas de mundo abierto como Grand Theft Auto '
                '(a la espera del lanzamiento oficial de GTA 6 en PC).',
          ),

          const SizedBox(height: 12),

          _hobbyCard(
            emoji: '🎵',
            titulo: 'Música',
            subtitulo: 'Urbano · Trap · Reggaetón',
            desc: 'La música siempre me acompaña en el día a día. Escucho bastante a '
                'Rauw Alejandro, Omar Courtz, Jhay Cortez, Anuel, Bad Bunny, '
                'Jay Wheeler y más artistas de ese estilo.',
          ),

          const SizedBox(height: 12),

          _hobbyCard(
            emoji: '🚗',
            titulo: 'Manejar',
            subtitulo: 'Honda Accord',
            desc: 'Tengo un Honda Accord y salir a manejar es sin duda de mis '
                'pasatiempos favoritos. Me relaja bastante salir a dar vueltas y despejar la mente.',
          ),

          const SizedBox(height: 12),

          _hobbyCard(
            emoji: '🎬',
            titulo: 'Series y Películas',
            subtitulo: 'Terror & Suspenso',
            desc: 'Me gustan mucho las series y películas de terror. '
                'Por ejemplo, Welcome to Derry es mi favorita.',
          ),

          const SizedBox(height: 30),

          const FooterWidget(),
        ],
      ),
    );
  }

  // funcion para crear el diseno de cada tarjeta de hobby
  Widget _hobbyCard({
    required String emoji,
    required String titulo,
    required String subtitulo,
    required String desc,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppThemes.accentBlue.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(emoji, style: const TextStyle(fontSize: 22)),
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
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        subtitulo,
                        style: const TextStyle(
                          color: AppThemes.accentBlue,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Divider(color: AppThemes.borderColor, height: 1),
            const SizedBox(height: 12),
            Text(
              desc,
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.8),
                fontSize: 13.5,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
