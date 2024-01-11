import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobileiot/const.dart';
import 'model.dart';
import 'repository.dart';

import 'edit_produk.dart';

class Produk extends StatefulWidget {
  const Produk({super.key});

  @override
  State<Produk> createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  List<Buah> listBuah = [];
  Repository repository = Repository();

  final _namabuahController = TextEditingController();
  final _beratController = TextEditingController();

  getData() async {
    listBuah = await repository.getData();
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group559Cxy (222:6949)
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
                  'Daftar Produk',
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
              padding: EdgeInsets.fromLTRB(20*fem, 33*fem, 20*fem, 35*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditProduk() ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(186*fem, 0*fem, 0*fem, 15*fem),
                      padding: EdgeInsets.fromLTRB(11.17*fem, 13.17*fem, 11*fem, 15*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.17*fem, 0.17*fem),
                            width: 24.67*fem,
                            height: 24.67*fem,
                            child: Image.asset(
                              plus,
                              width: 24.67*fem,
                              height: 24.67*fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 1.83*fem, 0*fem, 0*fem),
                            child: Text(
                              'Tambah produk',
                              style: GoogleFonts.nunito (
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w800,
                                height: 1.15*ffem/fem,
                                color: Color(0xff008c25),
                              ),
                            ),
                          ),
                        ],
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
                                    width:
                                    56.0,
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.food_bank_rounded,
                                            size:
                                            40.0),
                                      ],
                                    ),
                                  ),
                                  title: Text(listBuah[index].nama_buah),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Berat : ${listBuah[index].berat}'),
                                      Text('Waktu Update : ${listBuah[index].timestamp}'),
                                    ],
                                  ),
                                  trailing: IconButton(
                                    onPressed: () async {
                                      int buahId = int.parse(listBuah[index].id);
                                      bool response = await repository.deleteData(buahId);
                                      if (response) {
                                        print('Delete Data Berhasil');
                                      } else {
                                        print('Delete Data Gagal');
                                      }
                                      getData();
                                    },
                                    icon: Icon(Icons.delete),
                                  ),
                                ),
                              );
                          },
                          itemCount: listBuah.length
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
