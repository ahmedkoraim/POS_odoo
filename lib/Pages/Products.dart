import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos/Models/ProuductModel.dart';
import 'package:pos/Services/ProuductServices.dart';

import '../Widget/CustomCard_widget.dart';

class Products extends StatefulWidget {
  static const String Productroute = 'Products';
  Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
                size: 40,
              ),
            )
          ],
          backgroundColor: Colors.white,
          title: Text(
            'Products',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
            child: FutureBuilder<List<ProductModel>>(
                future: AllProductsService().getAllProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> productsitem = snapshot.data!;
                    return GridView.builder(
                        clipBehavior: Clip.none,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.5,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 100,
                        ),
                        itemBuilder: (context, index) {
                          return CustomCard(
                            Productite: productsitem[index],
                          );
                        });
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })));
  }
}
