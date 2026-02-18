class Exercise {
  final String id;
  final String title;
  final String description;
  final String category; // 'pre-ataque', 'durante-ataque'
  final String? imageUrl;
  final List<String> steps;
  final int duration; // in minutes
  bool isFavorite;

  Exercise({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    this.imageUrl,
    required this.steps,
    required this.duration,
    this.isFavorite = false,
  });
}
