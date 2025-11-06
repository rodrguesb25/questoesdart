class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  int get totalRatings => ratings.length;

  double get averageRating {
    if (ratings.isEmpty) {
      return 0.0; 
    }
    double soma = ratings.reduce((a, b) => a + b);
    return soma / ratings.length;
  }
}

void main() {
  const restaurant = Restaurant(
    name: 'Sabor & Arte',
    cuisine: 'Brasileira',
    ratings: [4.5, 5.0, 3.8, 4.2, 5.0],
  );

  print('Restaurante: ${restaurant.name}');
  print('Tipo de cozinha: ${restaurant.cuisine}');
  print('Total de avaliações: ${restaurant.totalRatings}');
  print('Média das avaliações: ${restaurant.averageRating.toStringAsFixed(2)}');
}