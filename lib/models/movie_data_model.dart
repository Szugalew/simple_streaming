class MovieDataModel {
  final String name;
  final String posterUrl;
  final String thumbnailUrl;
  final List<String> tags;
  final String description;

  MovieDataModel({
    required this.name,
    required this.posterUrl,
    required this.thumbnailUrl,
    required this.tags,
    required this.description,
  });

  static MovieDataModel fromJson(Map<dynamic, dynamic> json) {
    return MovieDataModel(
      name: json['name'] ?? "",
      posterUrl: json['poster'] ?? "",
      thumbnailUrl: json['thumbnail'] ?? "",
      tags: List<String>.from(json['tags'] ?? []),
      description: json['description'] ?? "",
    );
  }
}
