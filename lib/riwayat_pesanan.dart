import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'const.dart';

class RiwayatPesanan extends StatelessWidget {
  const RiwayatPesanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff040018),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20*fem, 50*fem, 133.5*fem, 30*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff008c24),
                borderRadius: BorderRadius.only (
                  bottomRight: Radius.circular(40*fem),
                  bottomLeft: Radius.circular(40*fem),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65.5*fem, 4*fem),
                      width: 47*fem,
                      height: 47*fem,
                      child: Image.asset(
                        back,
                        width: 47*fem,
                        height: 47*fem,
                      ),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints (
                      maxWidth: 164*fem,
                    ),
                    child: Text(
                      'Riwayat\nPesanan',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 36*ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.1499999619*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 20*fem, 440*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group567wVB (255:6405)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 5.6*fem, 6*fem, 9*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                          width: double.infinity,
                          height: 104.4*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group5649bF (255:6407)
                                margin: EdgeInsets.fromLTRB(0*fem, 10.4*fem, 7*fem, 4*fem),
                                padding: EdgeInsets.fromLTRB(3*fem, 3*fem, 3*fem, 3*fem),
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffb3b3b3)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 84*fem,
                                    height: 84*fem,
                                    child: Image.asset(
                                      kardus,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 263.45*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                      width: double.infinity,
                                      height: 74.4*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 84*fem, 0*fem),
                                            width: 90*fem,
                                            height: 68*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 6*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 84*fem,
                                                      height: 36*fem,
                                                      child: Text(
                                                        '#0090',
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 24*ffem,
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
                                                  top: 35*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 71*fem,
                                                      height: 33*fem,
                                                      child: Text(
                                                        'Apel\nStrawberry',
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w800,
                                                          height: 1.3399999936*ffem/fem,
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
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19.95*fem),
                                                  width: 25*fem,
                                                  height: 25*fem,
                                                  child: Image.asset(
                                                    trash,
                                                    width: 25*fem,
                                                    height: 25*fem,
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.45*fem, 0*fem),
                                                  constraints: BoxConstraints (
                                                    maxWidth: 86*fem,
                                                  ),
                                                  child: Text(
                                                    'Rp. 30.000  x 1 \nRp. 35.000  x 2',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w800,
                                                      height: 1.3399999936*ffem/fem,
                                                      color: Color(0xff6b6b6b),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                      child: Text(
                                        'Sub Total : Rp. 100.000',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.45*fem, 0*fem),
                          width: 186*fem,
                          height: 32*fem,
                          decoration: BoxDecoration (
                            color: Color(0xff32c100),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Paket telah diterima',
                              style: GoogleFonts.poppins(
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.5333333333*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20*fem, 5.6*fem, 9.55*fem, 10*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                          width: double.infinity,
                          height: 104.4*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 10.4*fem, 7*fem, 4*fem),
                                padding: EdgeInsets.fromLTRB(3*fem, 3*fem, 0*fem, 3*fem),
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: Color(0xffb3b3b3)),
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 84*fem,
                                    height: 84*fem,
                                    child: Image.asset(
                                      kardus,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 263.45*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                      width: double.infinity,
                                      height: 74.4*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 99*fem, 0*fem),
                                            width: 75*fem,
                                            height: 68*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 6*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 69*fem,
                                                      height: 36*fem,
                                                      child: Text(
                                                        '#089',
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 24*ffem,
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
                                                  top: 35*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 66*fem,
                                                      height: 33*fem,
                                                      child: Text(
                                                        'Alpukat\nKangkung',
                                                        style: GoogleFonts.poppins(
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w800,
                                                          height: 1.3399999936*ffem/fem,
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
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19.95*fem),
                                                  width: 25*fem,
                                                  height: 25*fem,
                                                  child: Image.asset(
                                                    trash,
                                                    width: 25*fem,
                                                    height: 25*fem,
                                                  ),
                                                ),
                                                Container(
                                                  // rp30000x3rp15000x2r17 (255:6394)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.45*fem, 0*fem),
                                                  constraints: BoxConstraints (
                                                    maxWidth: 87*fem,
                                                  ),
                                                  child: Text(
                                                    'Rp. 30.000 x 3 \nRp. 15.000  x 2',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w800,
                                                      height: 1.3399999936*ffem/fem,
                                                      color: Color(0xff6b6b6b),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                      child: Text(
                                        'Sub Total : Rp. 120.000',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18*ffem,
                                          fontWeight: FontWeight.w800,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.45*fem, 0*fem),
                          width: 186*fem,
                          height: 32*fem,
                          decoration: BoxDecoration (
                            color: Color(0xfff24e1e),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Pesanan dibatalkan',
                              style: GoogleFonts.poppins(
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.5333333333*ffem/fem,
                                color: Color(0xffffffff),
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
