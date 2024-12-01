class SearchModel {
  final int id;
  final String name;
  final String description;
  final String price;
  final String slug;
  final int quantity;
  final String category;
  final String images;

  SearchModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.slug,
    required this.quantity,
    required this.category,
    required this.images,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      slug: json['slug'],
      quantity: json['quantity'],
      category: json['category'],
      images: json['images'],
    );
  }
}
