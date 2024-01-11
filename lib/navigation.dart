import 'package:flutter/material.dart';
import 'package:mobileiot/homepage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:mobileiot/pesanan.dart';
import 'package:mobileiot/produk.dart';
import 'package:mobileiot/sensor.dart';
import 'barang_buah.dart';
import 'model.dart';
import 'repository.dart';
import 'data_summary.dart';
import 'edit_produk.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        color: Colors.black38,
        buttonBackgroundColor: Color(0xFF008C24),
        height: 50,
        items: <Widget>[
          Icon(Icons.home, color: Colors.white, size: 30),
          Icon(Icons.sensors_rounded, color: Colors.white, size: 30),
          Icon(Icons.assessment_rounded, color: Colors.white, size: 30),
          Icon(Icons.shopping_basket_rounded, color: Colors.white, size: 30),
          Icon(Icons.amp_stories_rounded, color: Colors.white, size: 30),
        ],
        index: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: <Widget>[
        Container(
          child: HomePage(),
        ),
        Container(
          child: Sensor(),
        ),
        Container(
          child: DataSummary(),
        ),
        Container(
          child: Produk(),
        ),
        Container(
          child: BarangBuah(),
        ),
      ][currentIndex],
    );
  }
}