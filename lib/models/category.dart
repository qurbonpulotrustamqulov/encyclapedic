class Category {
  final String name;
  final String description;

  Category(this.name, {
    required this.description,
  });

  @override
  String toString() {
    return 'Category{name: $name, description: $description}';
  }
}
