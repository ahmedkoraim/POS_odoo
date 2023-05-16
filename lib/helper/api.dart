import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:pos/Models/ModelProducts.dart';

// class Api {
//   Future<dynamic> get({required String url, @required String? token}) async {
//     Map<String, String> headers = {};
//
//     if (token != null) {
//       headers.addAll({'Authorization': 'Bearer $token'});
//     }
//     http.Response response = await http.get(Uri.parse(url), headers: headers);
//
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }
//
//   Future<dynamic> post(
//       {required String url,
//       @required dynamic body,
//       @required String? token}) async {
//     Map<String, String> headers = {};
//
//     if (token != null) {
//       headers.addAll({'Authorization': 'Bearer $token'});
//     }
//     http.Response response =
//         await http.post(Uri.parse(url), body: body, headers: headers);
//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = jsonDecode(response.body);
//
//       return data;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
//     }
//   }
//
//   Future<dynamic> put(
//       {required String url,
//       @required dynamic body,
//       @required String? token}) async {
//     Map<String, String> headers = {};
//     headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
//     if (token != null) {
//       headers.addAll({'Authorization': 'Bearer $token'});
//     }
//
//     print('url = $url body = $body token = $token ');
//     http.Response response =
//         await http.put(Uri.parse(url), body: body, headers: headers);
//     if (response.statusCode == 200) {
//       Map<String, dynamic> data = jsonDecode(response.body);
//       print(data);
//       return data;
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
//     }
//   }
// }




class ApiManager{


  static const String baseUrl='http://127.0.0.1:8069/api/';
  static const String apiKey='O0MIKGDBxRFmarQe3DiMZ8Rzqo1pfk';
  static Future <ModelProducts> getSources()async{
    var url=Uri.https(baseUrl,'api/custom/get_product',{
      'apiKey':apiKey,

    });

    var response=await http.get(url);
    return ModelProducts.fromJson(jsonDecode(response.body));

  }}
