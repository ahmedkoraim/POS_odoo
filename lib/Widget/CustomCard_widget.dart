import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pos/Models/ProuductModel.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.Productite});
  ProductModel Productite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 130,
            width: 220,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(blurRadius: 40, color: Colors.grey.withOpacity(0.2))
            ]),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Productite.name!,
                      style: const TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${Productite.price}',
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 40,
            child: Image.network(
              '${Productite.image}',
              height: 80,
              width: 80,
            ),
          ),
        ],
      ),
    );
  }
}
