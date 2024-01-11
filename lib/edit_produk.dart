import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileiot/const.dart';
import 'package:mobileiot/produk.dart';
import 'package:mobileiot/repository.dart';

import 'const.dart';
import 'model.dart';
import 'navigation.dart';

class EditProduk extends StatefulWidget {
  const EditProduk({super.key});

  @override
  State<EditProduk> createState() => _EditProdukState();
}

class _EditProdukState extends State<EditProduk> {
  Repository repository = Repository();
  final _namabuahController = TextEditingController();
  final _beratController = TextEditingController();

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
              padding: EdgeInsets.fromLTRB(20*fem, 48*fem, 141*fem, 37*fem),
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
                  Text(
                    'Produk',
                    style: GoogleFonts.poppins(
                      fontSize: 40*ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.5*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(19*fem, 23*fem, 20*fem, 41*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 38*fem),
                    width: double.infinity,
                    height: 65*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(19*fem, 6*fem, 15*fem, 6*fem),
                          height: double.infinity,

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 151*fem, 0*fem),
                                width: 101*fem,
                                height: double.infinity,
                                child: Text(
                                  'Simpan',
                                  style: GoogleFonts.poppins (
                                    fontSize: 25*ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 2*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            bool response = await repository.postData(
                              _namabuahController.text,
                              _beratController.text,
                            );
                            if (response) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Berhasil Menambahkan Data'),
                                  backgroundColor: Colors.green,
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Berhasil Menambahkan Data'),
                                    backgroundColor: Colors.green,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(16.5*fem, 14.5*fem, 11.3*fem, 7.17*fem),
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xff0031e1),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 44.2*fem,
                                height: 43.33*fem,
                                child: Icon(
                                  Icons.save_as_rounded,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(23*fem, 0*fem, 15*fem, 24*fem),
                    width: double.infinity,
                    height: 79*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Nama Buah',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 30 * ffem,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff5a5a5a),
                            ),
                          ),
                          controller: _namabuahController,
                          style: GoogleFonts.poppins(
                            fontSize: 36 * ffem,
                            fontWeight: FontWeight.w800,
                            height: 1.5 * ffem / fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 2*fem),
                    child: Text(
                      'Berat Buah',
                      style: GoogleFonts.poppins(
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w800,
                        height: 1.5*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    padding: EdgeInsets.fromLTRB(23*fem, 0*fem, 23*fem, 0*fem),
                    width: 390*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Dalam Kilogram',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff5a5a5a),
                          ),
                        ),
                        controller: _beratController,
                        style: GoogleFonts.poppins(
                          fontSize: 30 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.5 * ffem / fem,
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
            ),
      ),
    );
  }
}
