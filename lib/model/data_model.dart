class DataModel {
  final String name;
  final String description;
  final String image;

  DataModel({
    required this.name,
    required this.description,
    required this.image,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      name: json['name'] ?? "",
      description: json['description'] ?? "",
      image: json['flickr_images'][0] ?? "",
    );
  }
}
