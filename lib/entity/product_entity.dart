class ProductEntity {
  ProductEntity({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
  });

  String title;
  int price;
  String imageUrl;
  String description;

  factory ProductEntity.fromJson(Map<String, dynamic> json) {
    return ProductEntity(
      title: json['title'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() => {
    'title': this.title,
    'price': this.price,
    'imageUrl': this.imageUrl,
    'description': this.description,
  };
}
