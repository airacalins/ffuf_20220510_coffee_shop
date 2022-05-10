class Product {
  String id;
  String imageUrl;
  String title;
  String categoryId;
  double price;

  Product({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.categoryId,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? '', 
      imageUrl: json['imageUrl'] ?? '', 
      title: json['title'] ?? '', 
      categoryId: json['categoryId'] ?? '', 
      price: json['price'] ?? 0,
    );
  }
}