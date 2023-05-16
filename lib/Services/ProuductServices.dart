import 'dart:convert';
import 'package:pos/helper/api.dart';
import 'package:http/http.dart' as http;
import '../Models/ModelProducts.dart';
import '../Models/ProuductModel.dart';

class AllProductsService {
  Future<ModelProducts> getAllProducts() async {
    ModelProducts data =
        await ApiManager.getSources();

    List<dynamic> productsList = [] ;
    for (int i = 0; i < data.; i++) {
      productsList.(
        ModelProducts.fromJson(data[i]),
      );
    }
    return productsList;
  }
}






























// class Allproductservices {
//   Future<List<Productmodel>> getallproducts() async {
//     http.Response response = await http.get(Uri.parse(
//         'http://127.0.0.1:8069/api/custom/get_product?access_token=O0MIKGDBxRFmarQe3DiMZ8Rzqo1pfk'));
//     if (response.statusCode == 200) {
//       List<dynamic> data = jsonDecode(response.body);
//       List<Productmodel> productlist = [];
//       for (int i = 0; i < data.length; i++) {
//         productlist.add(
//           Productmodel.fromjson(data[i]),
//         );
//       }
//       return productlist;
//     } else {
//       throw Exception('the exception about response statuscode');
//     }
//   }
// 
  