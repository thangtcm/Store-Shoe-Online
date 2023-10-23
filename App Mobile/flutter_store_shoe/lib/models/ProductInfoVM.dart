// ignore_for_file: file_names

class ProductDetail {
  int id;
  int productId;
  double price;
  String? codeColor;
  String? urlImage;

  ProductDetail({
    required this.id,
    required this.productId,
    required this.price,
    this.codeColor,
    this.urlImage,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) {
    return ProductDetail(
      id: json['id'] ?? '',
      productId: json['productId'],
      price: json['price'].toDouble(),
      codeColor: json['codeColor'],
      urlImage: json['urlImage'],
    );
  }
}

class Product {
  int id;
  String productName;
  String productDescription;
  List<ProductDetail>? details;

  Product(
      {required this.id,
      required this.productName,
      required this.productDescription,
      this.details});

  factory Product.fromJson(Map<String, dynamic> json) {
    var detailsList = json['details'] as List;
    List<ProductDetail> details =
        detailsList.map((detail) => ProductDetail.fromJson(detail)).toList();
    return Product(
      id: json['Id'] ?? 0,
      productName: json['ProductName'] ?? '',
      productDescription: json['ProdductDescription'] ?? '',
      details: details,
    );
  }
}
