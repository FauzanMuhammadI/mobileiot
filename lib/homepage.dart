import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileiot/login.dart';
import 'package:mobileiot/repository.dart';

import 'const.dart';
import 'model.dart';
import 'repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Buah> listBuah = [];
  List<Berat> listBerat = [];
  List<TotalBerat> listTotalBerat = [];
  Repository repository = Repository();
  RepositoryBerat repository1 = RepositoryBerat();
  RepositoryTotalBerat repository2 = RepositoryTotalBerat();

  getData() async {
    listBuah = await repository.getData();
    listBerat = await repository1.getData();
    listTotalBerat = await repository2.getData();
    listBuah.sort((a, b) => b.timestamp.compareTo(a.timestamp));
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                  padding: EdgeInsets.fromLTRB(20*fem, 51*fem, 25*fem, 25*fem),
                  width: double.infinity,
                  decoration: BoxDecoration (
                    color: Color(0xff008c24),
                    borderRadius: BorderRadius.only (
                      bottomRight: Radius.circular(50*fem),
                      bottomLeft: Radius.circular(50*fem),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                        width: double.infinity,
                        height: 70*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 86*fem, 0*fem),
                              constraints: BoxConstraints (
                                maxWidth: 250*fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.poppins (
                                    fontSize: 16*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2102272511*ffem/fem,
                                    color: Color(0xffffffff),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Selamat Datang',
                                      style: GoogleFonts.poppins (
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Color(0x99ffffff),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 👋\n',
                                      style: GoogleFonts.poppins (
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Di Timbangan Buah',
                                      style: GoogleFonts.poppins (
                                        fontSize: 21*ffem,
                                        fontWeight: FontWeight.w800,
                                        height: 1.3625*ffem/fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 79 * fem,
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 8 * fem,
                                    top: 0 * fem,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return Login();
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: 71 * fem,
                                        height: 70 * fem,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(logout),
                                            fit: BoxFit.cover,
                                          ),
                                          border: Border.all(
                                            width: 4,
                                            color: const Color(0xFFB10202),
                                          ),
                                          borderRadius: BorderRadius.all(Radius.elliptical(36 * fem, 35 * fem)),
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
                        padding: EdgeInsets.fromLTRB(19*fem, 5*fem, 20*fem, 5*fem),
                        width: double.infinity,
                        height: 90*fem,
                        decoration: BoxDecoration (
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(20*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 6*fem, 0*fem),
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD00000),
                                  shape: CircleBorder(),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    box,
                                    width: 19*fem,
                                    height: 19*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                              constraints: BoxConstraints (
                                maxWidth: 128*fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.nunito (
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.75*ffem/fem,
                                    color: Color(0xff6b6b6b),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Total Berat \n',
                                    ),
                                    TextSpan(
                                      text: listTotalBerat.isNotEmpty
                                          ? '${double.parse(listTotalBerat[0].total_weight).toStringAsFixed(3)}'
                                          : '-',
                                      style: GoogleFonts.poppins (
                                        fontSize: 25 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.09375 * ffem / fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 6*fem, 0*fem),
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFE1B722),
                                  shape: CircleBorder(),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    sensor,
                                    width: 19*fem,
                                    height: 19*fem,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // totalsensor10mhb (192:6621)
                              constraints: BoxConstraints (
                                maxWidth: 126*fem,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.nunito (
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w800,
                                    height: 1.75*ffem/fem,
                                    color: Color(0xff6b6b6b),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Total Buah \n',
                                    ),
                                    TextSpan(
                                      text: '20',
                                      style: GoogleFonts.poppins (
                                        fontSize: 25*ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.09375*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ],
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
                  margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 0*fem, 0*fem),
                  child: Text(
                    'Grafik',
                    style: GoogleFonts.nunito (
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w800,
                      height: 1.015625*ffem/fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(19 * fem, 6 * fem, 26 * fem, 51 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 19*fem),
                            width: double.infinity,
                            height: 231*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(20*fem),
                              color: Color(0xfff1f1f1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),
                              child: LineChart(
                                  LineChartData(
                                      lineBarsData: [
                                        LineChartBarData(
                                          spots: [
                                            FlSpot(0, 240),
                                            FlSpot(1, 460),
                                            FlSpot(2, 490),
                                            FlSpot(3, 500),
                                            FlSpot(4, 540),
                                            FlSpot(5, 523),
                                          ],
                                          isCurved:false,
                                          colors: [Colors.green],
                                          dotData: FlDotData(show: true),
                                          belowBarData: BarAreaData(show: true),
                                        ),
                                      ],
                                      titlesData: FlTitlesData(
                                        leftTitles: SideTitles(
                                          showTitles: true,
                                          getTitles: (value){
                                            return value.toInt().toString();
                                          },
                                          interval: 100,
                                          reservedSize: 28,
                                          margin: 12,
                                        ),
                                        bottomTitles: SideTitles(
                                          getTitles: (value) {
                                            switch (value.toInt()) {
                                              case 0:
                                                return 'JAN';
                                              case 1:
                                                return 'FEB';
                                              case 2:
                                                return 'MAR';
                                              case 3:
                                                return 'APR';
                                              case 4:
                                                return 'MEI';
                                              case 5:
                                                return 'JUN';
                                              default:
                                                return '';
                                            }
                                          },
                                          interval: 1,
                                          reservedSize: 28,
                                          margin: 12,
                                        ),
                                      ),
                                      borderData: FlBorderData(
                                        show: true,
                                        border: Border.all(
                                          color: const Color(0xff37434d),
                                          width: 1,
                                        ),
                                      ),
                                      gridData: FlGridData(
                                          show: true,
                                          checkToShowHorizontalLine: (value) => value % 100 == 0,
                                          getDrawingHorizontalLine: (value) {
                                            if (value == 0) {
                                              return FlLine(
                                                color: const Color(0xff37434d),
                                                strokeWidth: 3,
                                              );
                                            } else {
                                              return FlLine(
                                                color: const Color(0xff37434d),
                                                strokeWidth: 0.8,
                                              );
                                            }
                                          }
                                      )
                                  )
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            child: Text(
                              'Logs',
                              style: GoogleFonts.nunito(
                                fontSize: 32 * ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.015625 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: ClampingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: ListTile(
                                      contentPadding: EdgeInsets.all(10),
                                      leading: Container(
                                        width: 56.0,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.archive_rounded, size: 40.0,color: Color(0xff008c24),),
                                          ],
                                        ),
                                      ),
                                      title: Text(listBuah[index].nama_buah),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Berat : ${listBuah[index].berat}'' Dag'),
                                          Text('Waktu Update : ${listBuah[index].timestamp}'),
                                        ],
                                      ),
                                      trailing: const Icon(Icons.more_vert),
                                    ),
                                  );
                                },
                                itemCount: listBuah.length,
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
