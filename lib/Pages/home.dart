import 'package:flutter/material.dart';
import 'package:odoo/odoo.dart';
import '../Services/ProuductServices.dart';
import '../Models/ProuductModel.dart';

class home extends StatefulWidget {
  static const String HomeRoute = 'home';
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final String prouductname = 'name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        titleSpacing: 10,
        backgroundColor: Colors.blueGrey,
        title: Text(
          'POS System',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  height: 180.0,
                  width: 180,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Icon(Icons.point_of_sale_outlined,
                          size: 50.0, color: Colors.white),
                      Text(
                        "نقطة بيع",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      const SizedBox(width: 20.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  height: 180.0,
                  width: 180,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Icon(Icons.add_shopping_cart_rounded,
                          size: 50.0, color: Colors.white),
                      Text(
                        "بيع",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(width: 20.0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  height: 180.0,
                  width: 180,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Icon(Icons.inventory, size: 50.0, color: Colors.white),
                      Text(
                        "المخزن",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      const SizedBox(width: 20.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  height: 180.0,
                  width: 180,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Icon(Icons.new_label, size: 60.0, color: Colors.white),
                      Text(
                        "الاصناف",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      const SizedBox(width: 20.0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.pink,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  height: 180.0,
                  width: 180,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Icon(Icons.assignment_ind_rounded,
                          size: 50.0, color: Colors.white),
                      Text(
                        "المستخدم",
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                      const SizedBox(width: 20.0),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  height: 180.0,
                  width: 180,
                  child: Row(
                    children: [
                      const SizedBox(width: 20.0),
                      Icon(Icons.settings, size: 50.0, color: Colors.white),
                      Text(
                        "الاعدادات",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      const SizedBox(width: 20.0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
