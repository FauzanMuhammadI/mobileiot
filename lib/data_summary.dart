import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileiot/repository.dart';

import 'const.dart';
import 'model.dart';

class DataSummary extends StatefulWidget {
  const DataSummary({super.key});

  @override
  State<DataSummary> createState() => _DataSummaryState();
}

class _DataSummaryState extends State<DataSummary> {
  List<RataBerat> listRata = [];
  List<Berat> listBerat = [];
  List<BeratTerbesar> listMax = [];
  List<BeratTerkecil> listMin = [];
  RepositoryBerat repository = RepositoryBerat();
  RepositoryRataBerat repository1 = RepositoryRataBerat();
  RepositoryBeratTerbesar repository2 = RepositoryBeratTerbesar();
  RepositoryBeratTerkecil repository3 = RepositoryBeratTerkecil();

  getData() async {
    listRata = await repository1.getData();
    listBerat = await repository.getData();
    listMax = await repository2.getData();
    listMin = await repository3.getData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getData();
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // group561fSq (242:6402)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
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
                  'Data Summary',
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
              margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 0 * fem),
              constraints: BoxConstraints(
                maxWidth: 390 * fem,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff), // Ganti dengan warna latar belakang yang diinginkan
                borderRadius: BorderRadius.circular(10 * fem), // Ganti sesuai kebutuhan
              ),
              child: Padding(
                padding: EdgeInsets.all(16 * fem), // Ganti sesuai kebutuhan
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Rata-Rata Berat\n',
                        style: GoogleFonts.poppins(
                          fontSize: 23 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                      TextSpan(
                        text: '(Kilogram)\n',
                        style: GoogleFonts.nunito(
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff8b8b8b),
                        ),
                      ),
                      TextSpan(
                        text: listRata.isNotEmpty
                            ? '${(double.parse(listRata[0].average_weight) / 100).toStringAsFixed(2)} Kg'
                            : 'No data available',
                        style: GoogleFonts.poppins(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff008c24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 0 * fem),
              constraints: BoxConstraints(
                maxWidth: 390 * fem,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: Padding(
                padding: EdgeInsets.all(16 * fem),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Berat Terbesar\n',
                        style: GoogleFonts.poppins(
                          fontSize: 23 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                      TextSpan(
                        text: '(Kilogram)\n',
                        style: GoogleFonts.nunito(
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff8b8b8b),
                        ),
                      ),
                      TextSpan(
                        text: listMax.isNotEmpty
                            ? '${(double.parse(listMax[0].max_weight) / 100).toStringAsFixed(2)} Kg'
                            : 'No data available',
                        style: GoogleFonts.poppins(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff008c24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 0 * fem),
              constraints: BoxConstraints(
                maxWidth: 390 * fem,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(10 * fem), // Ganti sesuai kebutuhan
              ),
              child: Padding(
                padding: EdgeInsets.all(16 * fem), // Ganti sesuai kebutuhan
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Berat Terkecil\n',
                        style: GoogleFonts.poppins(
                          fontSize: 23 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                      TextSpan(
                        text: '(Kilogram)\n',
                        style: GoogleFonts.nunito(
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.3625 * ffem / fem,
                          color: Color(0xff8b8b8b),
                        ),
                      ),
                      TextSpan(
                        text: listMin.isNotEmpty
                            ? '${(double.parse(listMin[0].min_weight) / 100).toStringAsFixed(2)} Kg'
                            : 'No data available',
                        style: GoogleFonts.poppins(
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff008c24),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 350,
            ),
          ],
        ),
      ),
    ),
      ),
    );
  }
}
