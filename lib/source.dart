class Source {
  String id;
  String name;

  // Create The Structure.
  Source({required this.id, required this.name});

  //Create The Function To Map The JSON
  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      id: json["id"],
      name: json["name"],
    );
  }
}
