import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileiot/riwayat_pesanan.dart';

import 'const.dart';

class Pesanan extends StatelessWidget {
  const Pesanan({Key? key}) : super(key: key);

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
                  'Pemesanan',
                  style: GoogleFonts.poppins(
                    fontSize: 40*ffem,
                    fontWeight: FontWeight.w800,
                    height: 1.5*ffem/fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20*fem, 23*fem, 20*fem, 174*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RiwayatPesanan()),
                    );
                  },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(128*fem, 0*fem, 0*fem, 23*fem),
                      padding: EdgeInsets.fromLTRB(22.33*fem, 13*fem, 19*fem, 13*fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xfff1f1f1),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.33*fem, 0*fem),
                            width: 23.33*fem,
                            height: 30*fem,
                            child: Image.asset(
                              bookmark,
                              width: 23.33*fem,
                              height: 30*fem,
                            ),
                          ),
                          Text(
                            'Riwayat pesanan',
                            style: GoogleFonts.poppins(
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w800,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 12*fem, 5*fem, 6*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xfff1f1f1),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 5*fem),
                          width: double.infinity,
                          height: 111*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 13*fem),
                                padding: EdgeInsets.fromLTRB(3*fem, 3*fem, 3*fem, 3*fem),
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
                                width: 260*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 84*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 0*fem),
                                            width: 84*fem,
                                            height: double.infinity,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 6*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 78*fem,
                                                      height: 36*fem,
                                                      child: Text(
                                                        '#0124',
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
                                                      height: 49*fem,
                                                      child: Text(
                                                        'Anggur\nStarwberry\n......',
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
                                            margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 0*fem, 0*fem),
                                            constraints: BoxConstraints (
                                              maxWidth: 86*fem,
                                            ),
                                            child: Text(
                                              'Rp. 70.000  x 1 \nRp. 35.000  x 2',
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
                                    Container(
                                      margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 0*fem),
                                      child: Text(
                                        'Sub Total : Rp. 140.000',
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
                          margin: EdgeInsets.fromLTRB(72*fem, 0*fem, 0*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 1*fem),
                                width: 144*fem,
                                height: 32*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xff32c100),
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Terima Pesanan',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15*ffem,
                                      fontWeight: FontWeight.w800,
                                      height: 1.5333333333*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                width: 144*fem,
                                height: 32*fem,
                                decoration: BoxDecoration (
                                  color: Color(0xfff24e1e),
                                  borderRadius: BorderRadius.circular(5*fem),
                                ),
                                child: Center(
                                  child: Text(
                                    'Tolak Pesanan',
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
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 5.6*fem, 5*fem, 9*fem),
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
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 93*fem, 0*fem),
                                            width: 81*fem,
                                            height: 68*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 6*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 75*fem,
                                                      height: 36*fem,
                                                      child: Text(
                                                        '#0122',
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
                                                        'Anggur\nStrawberry',
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
                                                  // rp70000x1rp35000x2uxd (255:6338)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.45*fem, 0*fem),
                                                  constraints: BoxConstraints (
                                                    maxWidth: 86*fem,
                                                  ),
                                                  child: Text(
                                                    'Rp. 70.000  x 1 \nRp. 35.000  x 2',
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
                                        'Sub Total : Rp. 140.000',
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
                          margin: EdgeInsets.fromLTRB(252*fem, 0*fem, 1.45*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 4*fem, 6.65*fem, 5*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff32c100),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14.65*fem, 0*fem),
                                child: Text(
                                  'Packing',
                                  style: GoogleFonts.poppins(
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5333333333*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // oouinextltrFYd (255:6342)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.04*fem, 0*fem, 0*fem),
                                width: 1*fem,
                                height: 18*fem,
                                child: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20*fem, 5.6*fem, 5*fem, 10*fem),
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
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 92*fem, 0*fem),
                                            width: 82*fem,
                                            height: 68*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 6*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 76*fem,
                                                      height: 36*fem,
                                                      child: Text(
                                                        '#0123',
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
                                                      width: 82*fem,
                                                      height: 33*fem,
                                                      child: Text(
                                                        'Jeruk Florida\nKangkung',
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
                          margin: EdgeInsets.fromLTRB(252*fem, 0*fem, 1.45*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 4*fem, 6.65*fem, 5*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xff32c100),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18.65*fem, 0*fem),
                                child: Text(
                                  'Diantar',
                                  style: GoogleFonts.poppins(
                                    fontSize: 15*ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.5333333333*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // oouinextltrNyw (255:6322)
                                margin: EdgeInsets.fromLTRB(0*fem, 1.04*fem, 0*fem, 0*fem),
                                width: 1*fem,
                                height: 18*fem,
                                child: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.white,
                                  size: 20,
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
          ],
        ),
      ),
    ),
      ),
    );
  }
}
