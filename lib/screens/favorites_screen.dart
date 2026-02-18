import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../models/exercise.dart';
import 'exercise_detail_screen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  // Mock favorite exercises
  List<Exercise> favoriteExercises = [];

  @override
  void initState() {
    super.initState();
    // Initialize with some sample favorites
    favoriteExercises = [
      Exercise(
        id: '1',
        title: 'Respiración Diafragmática',
        description: 'Técnica de respiración profunda para reducir la ansiedad',
        category: 'pre-ataque',
        duration: 5,
        steps: [],
        isFavorite: true,
      ),
      Exercise(
        id: '5',
        title: 'Técnica 5-4-3-2-1',
        description: 'Ejercicio de conexión con los sentidos',
        category: 'durante-ataque',
        duration: 5,
        steps: [],
        isFavorite: true,
      ),
    ];
  }

  void _toggleFavorite(Exercise exercise) {
    setState(() {
      exercise.isFavorite = !exercise.isFavorite;
      if (!exercise.isFavorite) {
        favoriteExercises.remove(exercise);
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Eliminado de favoritos'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softBackground,
      appBar: AppBar(
        title: const Text('Favoritos'),
      ),
      body: favoriteExercises.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 80,
                    color: AppColors.textHint,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'No tienes favoritos aún',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Agrega ejercicios a favoritos para acceder\nrápidamente a ellos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: favoriteExercises.length,
              itemBuilder: (context, index) {
                final exercise = favoriteExercises[index];
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
                              color: exercise.category == 'pre-ataque'
                                  ? AppColors.primaryGreen.withOpacity(0.1)
                                  : AppColors.sosOrange.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              exercise.category == 'pre-ataque'
                                  ? Icons.spa
                                  : Icons.healing,
                              color: exercise.category == 'pre-ataque'
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
                            icon: const Icon(
                              Icons.favorite,
                              color: AppColors.emergencyRed,
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
