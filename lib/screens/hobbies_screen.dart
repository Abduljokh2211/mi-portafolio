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
            'Lo que me gusta hacer',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Fuera del código también tengo vida jaja',
            style: TextStyle(color: AppThemes.textGray, fontSize: 14),
          ),

          const SizedBox(height: 20),

          _hobbyCard(
            context,
            emoji: '🎮',
            titulo: 'Videojuegos',
            desc: 'Me gustan los juegos de mundo abierto y FPS. '
                'Últimamente le he metido bastante al Valorant y al '
                'GTA. También me gustan los juegos de historia.',
            imgUrl: 'https://images.unsplash.com/photo-1612287230202-1ff1d85d1bdf?w=600',
          ),

          const SizedBox(height: 12),

          _hobbyCard(
            context,
            emoji: '🎵',
            titulo: 'Música',
            desc: 'Escucho de todo un poco, pero lo que más me gusta es '
                'el rap y el R&B. Siempre tengo los audífonos puestos '
                'cuando estoy programando, me ayuda a concentrarme.',
            imgUrl: 'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=600',
          ),

          const SizedBox(height: 12),

          _hobbyCard(
            context,
            emoji: '🏋️',
            titulo: 'Ejercicio',
            desc: 'Trato de ir al gym cuando puedo. No soy el más '
                'constante pero me gusta mantenerme activo. '
                'También salgo a caminar de vez en cuando.',
            imgUrl: 'https://images.unsplash.com/photo-1534438327276-14e5300c3a48?w=600',
          ),

          const SizedBox(height: 12),

          _hobbyCard(
            context,
            emoji: '📺',
            titulo: 'Series y Películas',
            desc: 'Fan de las series de suspenso y ciencia ficción. '
                'Breaking Bad es mi serie favorita de todos los tiempos. '
                'También veo anime de vez en cuando.',
            imgUrl: 'https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?w=600',
          ),

          const SizedBox(height: 30),
          const FooterWidget(),
        ],
      ),
    );
  }

  Widget _hobbyCard(
    BuildContext context, {
    required String emoji,
    required String titulo,
    required String desc,
    required String imgUrl,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // imagen del hobby
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
              // si falla la imagen no quiero que explote la app
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: AppThemes.cardColor,
                  child: const Center(
                    child: Icon(Icons.image_not_supported, color: AppThemes.textGray, size: 40),
                  ),
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Container(
                  color: AppThemes.cardColor,
                  child: const Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(emoji, style: const TextStyle(fontSize: 22)),
                    const SizedBox(width: 8),
                    Text(titulo, style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    )),
                  ],
                ),
                const SizedBox(height: 8),
                Text(desc, style: TextStyle(
                  color: AppThemes.textGray,
                  fontSize: 13,
                  height: 1.5,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
