class Information {
  final List<String> videoUrl;
  final String imageName;
  final String name;
  final String category;
  final String about;

  const Information( {
    required this.videoUrl,
    required this.about,
    required this.imageName,
    required this.name,
    required this.category,
  });

  @override
  String toString() {
    return 'Information{imageName: $imageName, name: $name, category: $category}';
  }
}