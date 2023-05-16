// class ProductModel {
//    RasultModel? name;
//    RasultModel? price;
//    RasultModel? image;
//   ProductModel({
//     required this.name,
//     required this.price,
//     required this.image,
//   });

//   factory ProductModel.fromJson(jsonData) {
//     return ProductModel(
//         name: jsonData['result'] ,
//         price: jsonData['result'] ,
//         image: jsonData['result'] );
//   }
// }

// class RasultModel {
//   final String name;
//   final double price;
//   final String image;
//   RasultModel({required this.name, required this.price, required this.image});

//   factory RasultModel.fromJson(jsonData) {
//     return RasultModel(
//         name: jsonData['name'],
//         price: jsonData['list_price'],
//         image: jsonData['image_small']);
//   }
// }

class ProductModel {
  String? name;
  double? price;
  String? image;

  ProductModel({
    this.name,
    this.price,
    this.image,
  });

  ProductModel.fromFireStore(Map<String, dynamic> data) {
    name = data['name'];
    price = data['list_price'];
    image = data['image_small'];
  }

  Map<String, dynamic> toFireStore() {
    return {
      'name': name,
      'list_price': price,
      'image_small': image,
    };
  }
}
