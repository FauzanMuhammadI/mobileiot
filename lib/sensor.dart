import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileiot/const.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'model.dart';
import 'repository.dart';

class Sensor extends StatefulWidget {
  const Sensor({super.key});

  @override
  State<Sensor> createState() => _SensorState();
}

class _SensorState extends State<Sensor> {
  List<Berat> listBerat = [];
  RepositoryBerat repository = RepositoryBerat();
  String currentBerat = '';

  getData() async {
  listBerat = await repository.getData();
  setState(() {});
  }

  @override
  void initState() {
  getData();
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0xff040018),
      body: SingleChildScrollView(
      child: Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 145*fem,
              decoration: BoxDecoration (
                color: Color(0xff008c24),
                borderRadius: BorderRadius.only (
                  bottomRight: Radius.circular(40*fem),
                  bottomLeft: Radius.circular(40*fem),
                ),
              ),
              child: Center(
                child: Text(
                  'Data Sensor',
                  style: GoogleFonts.poppins (
                    fontSize: 40*ffem,
                    fontWeight: FontWeight.w800,
                    height: 1.5*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20*fem, 33*fem, 20*fem, 69*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group5511ww (219:6631)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                    padding: EdgeInsets.fromLTRB(25*fem, 10*fem, 25*fem, 12*fem),
                    width: double.infinity,
                    height: 88*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 140*fem, 0*fem),
                          width: 182*fem,
                          height: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0*fem,
                                top: 24*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 182*fem,
                                    height: 42*fem,
                                    child: Text(
                                      'Strawberry',
                                      style: GoogleFonts.poppins (
                                        fontSize: 28*ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0*fem,
                                top: 0*fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 130*fem,
                                    height: 30*fem,
                                    child: Text(
                                      'Jenis Buah',
                                      style: GoogleFonts.poppins (
                                        fontSize: 20*ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff6b6b6b),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 7.6*fem, 0*fem, 0*fem),
                          width: 18*fem,
                          height: 30*fem,
                          child: Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Color(0xff6b6b6b),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 30.3*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 2.3*fem, 46*fem, 0*fem),
                          child: Text(
                            'Masukan Berat',
                            style: GoogleFonts.poppins (
                              fontSize: 28*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.5*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        LiteRollingSwitch(
                          value: false,
                          textOn: '',
                          textOff: '',
                          colorOn: Colors.greenAccent[700]!,
                          colorOff: Colors.grey[700]!,
                          iconOn: Icons.check,
                          iconOff: Icons.close,
                          onChanged: (bool state) {
                          }, onTap: (){}, onDoubleTap: (){}, onSwipe: (){},
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
                    width: double.infinity,
                    height: 250*fem,
                    decoration: BoxDecoration (
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 100*fem,
                          top: 60*fem,
                          child: Align(
                            child: SizedBox(
                              width: 500*fem,
                              height: 190*fem,
                              child: Text(
                                listBerat.isNotEmpty
                                    ? '${(double.parse(listBerat.last.weight) / 100).toStringAsFixed(2)} Kg'
                                    : '------',
                                style: GoogleFonts.poppins (
                                  fontSize: 60*ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 87*fem,
                          top: 175*fem,
                          child: Align(
                            child: SizedBox(
                              width: 213*fem,
                              height: 54*fem,
                              child: Text(
                                'Strawberry',
                                style: GoogleFonts.poppins (
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff6b6b6b),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                          child: Text(
                            'Logs',
                            style: GoogleFonts.nunito (
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.015625*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Center(
                          child: Card(
                            color: Colors.grey[800],
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DataTable(
                                    columns: [
                                      DataColumn(
                                        label: Text(
                                          'Weight',
                                          style: TextStyle(color: Colors.white),  // Warna teks putih
                                        ),
                                      ),
                                      DataColumn(
                                        label: Text(
                                          'Timestamp',
                                          style: TextStyle(color: Colors.white),  // Warna teks putih
                                        ),
                                      ),
                                    ],
                                    rows: listBerat.reversed.map((berat) {
                                      return DataRow(
                                        cells: [
                                          DataCell(
                                            Text(
                                              '${berat.weight} Dag',
                                              style: TextStyle(color: Colors.white),  // Warna teks putih
                                            ),
                                          ),
                                          DataCell(
                                            Text(
                                              berat.timestamp,
                                              style: TextStyle(color: Colors.white),  // Warna teks putih
                                            ),
                                          ),
                                        ],
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    ),
    );
  }
}
