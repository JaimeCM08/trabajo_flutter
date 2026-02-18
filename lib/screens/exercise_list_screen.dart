import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../models/exercise.dart';
import 'exercise_detail_screen.dart';

class ExerciseListScreen extends StatefulWidget {
  final String category;
  final String title;

  const ExerciseListScreen({
    super.key,
    required this.category,
    required this.title,
  });

  @override
  State<ExerciseListScreen> createState() => _ExerciseListScreenState();
}

class _ExerciseListScreenState extends State<ExerciseListScreen> {
  late List<Exercise> exercises;

  @override
  void initState() {
    super.initState();
    exercises = _getExercisesByCategory(widget.category);
  }

  List<Exercise> _getExercisesByCategory(String category) {
    if (category == 'pre-ataque') {
      return [
        Exercise(
          id: '1',
          title: 'Respiración Diafragmática',
          description: 'Técnica de respiración profunda para reducir la ansiedad',
          category: category,
          duration: 5,
          steps: [
            'Siéntate cómodamente con la espalda recta',
            'Coloca una mano en tu pecho y otra en tu abdomen',
            'Inhala lentamente por la nariz durante 4 segundos',
            'Mantén el aire por 2 segundos',
            'Exhala suavemente por la boca durante 6 segundos',
            'Repite durante 5 minutos',
          ],
        ),
        Exercise(
          id: '2',
          title: 'Relajación Muscular Progresiva',
          description: 'Técnica para relajar los músculos del cuerpo',
          category: category,
          duration: 10,
          steps: [
            'Busca un lugar tranquilo y siéntate cómodamente',
            'Cierra los ojos y respira profundamente',
            'Tensa los músculos de los pies por 5 segundos',
            'Relaja completamente y nota la diferencia',
            'Continúa con las piernas, abdomen, brazos y cara',
            'Repite todo el proceso 2-3 veces',
          ],
        ),
        Exercise(
          id: '3',
          title: 'Mindfulness - Atención Plena',
          description: 'Ejercicio de meditación para estar presente',
          category: category,
          duration: 10,
          steps: [
            'Encuentra un lugar cómodo y tranquilo',
            'Cierra los ojos y enfócate en tu respiración',
            'Observa tus pensamientos sin juzgarlos',
            'Cuando te distraigas, vuelve a tu respiración',
            'Practica durante 10 minutos',
          ],
        ),
        Exercise(
          id: '4',
          title: 'Visualización Positiva',
          description: 'Imagina un lugar seguro y tranquilo',
          category: category,
          duration: 7,
          steps: [
            'Cierra los ojos y respira profundamente',
            'Imagina un lugar donde te sientas seguro',
            'Visualiza todos los detalles: colores, sonidos, olores',
            'Permanece en ese lugar imaginario',
            'Regresa lentamente cuando estés listo',
          ],
        ),
      ];
    } else {
      // durante-ataque
      return [
        Exercise(
          id: '5',
          title: 'Técnica 5-4-3-2-1',
          description: 'Ejercicio de conexión con los sentidos',
          category: category,
          duration: 5,
          steps: [
            'Identifica 5 cosas que puedes VER',
            'Identifica 4 cosas que puedes TOCAR',
            'Identifica 3 cosas que puedes OÍR',
            'Identifica 2 cosas que puedes OLER',
            'Identifica 1 cosa que puedes SABOREAR',
          ],
        ),
        Exercise(
          id: '6',
          title: 'Respiración 4-7-8',
          description: 'Técnica de respiración para calmar el sistema nervioso',
          category: category,
          duration: 3,
          steps: [
            'Exhala completamente por la boca',
            'Cierra la boca e inhala por la nariz contando hasta 4',
            'Mantén la respiración contando hasta 7',
            'Exhala completamente por la boca contando hasta 8',
            'Repite el ciclo 4 veces',
          ],
        ),
        Exercise(
          id: '7',
          title: 'Conexión con el Presente',
          description: 'Técnica para anclarte al momento actual',
          category: category,
          duration: 3,
          steps: [
            'Presiona tus pies firmemente contra el suelo',
            'Siente el contacto de tu cuerpo con la silla',
            'Toca diferentes texturas a tu alrededor',
            'Di en voz alta: "Estoy aquí, estoy seguro"',
            'Respira profundamente 3 veces',
          ],
        ),
        Exercise(
          id: '8',
          title: 'Agua Fría',
          description: 'Técnica de choque para interrumpir el ataque',
          category: category,
          duration: 2,
          steps: [
            'Salpica agua fría en tu cara',
            'O sostén un cubito de hielo en tu mano',
            'Enfócate en la sensación del frío',
            'Respira profundamente mientras lo haces',
            'Continúa hasta sentir más calma',
          ],
        ),
      ];
    }
  }

  void _toggleFavorite(Exercise exercise) {
    setState(() {
      exercise.isFavorite = !exercise.isFavorite;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          exercise.isFavorite
              ? 'Añadido a favoritos'
              : 'Eliminado de favoritos',
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softBackground,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          final exercise = exercises[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseDetailScreen(
                      exercise: exercise,
                      onFavoriteToggle: () => _toggleFavorite(exercise),
                    ),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: widget.category == 'pre-ataque'
                            ? AppColors.primaryGreen.withOpacity(0.1)
                            : AppColors.sosOrange.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        widget.category == 'pre-ataque'
                            ? Icons.spa
                            : Icons.healing,
                        color: widget.category == 'pre-ataque'
                            ? AppColors.primaryGreen
                            : AppColors.sosOrange,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            exercise.title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            exercise.description,
                            style: const TextStyle(
                              fontSize: 14,
                              color: AppColors.textSecondary,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.timer_outlined,
                                size: 16,
                                color: AppColors.textSecondary,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${exercise.duration} min',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        exercise.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: exercise.isFavorite
                            ? AppColors.emergencyRed
                            : AppColors.textSecondary,
                      ),
                      onPressed: () => _toggleFavorite(exercise),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
