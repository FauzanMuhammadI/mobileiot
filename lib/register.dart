import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobileiot/const.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';
import 'navigation.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmpasswordTextController = TextEditingController();

  @override
  void dispose(){
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _confirmpasswordTextController.dispose();
    super.dispose();
  }

  Future signUp(BuildContext context) async {
    if (passwordConfirmed()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailTextController.text.trim(),
          password: _passwordTextController.text.trim(),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );

        // If user creation is successful, show a snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Akun berhasil dibuat!'),
            duration: Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.green,
          ),
        );
      } on FirebaseAuthException catch (e) {
        // Handle specific FirebaseAuth exceptions if needed
        print('Error creating account: ${e.message}');
      }
    }
  }

  bool passwordConfirmed(){
    if (_passwordTextController.text.trim()==
    _confirmpasswordTextController.text.trim()) {
      return true;
    } else{
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [g2, g1]),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(image: AssetImage(image2), height: size.height*0.2,),
                  Text('Belum Punya Akun Yaa.. !',
                    style: Theme.of(context).textTheme.headlineSmall?.merge(GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 30,)
                      ,)
                    ,),
                  Text('Isi Data Dirimu Untuk Membuat Akun',
                    style: Theme.of(context).textTheme.headlineMedium?.merge(GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 15,)
                      ,)
                    ,),
                  Form(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 30.0 -10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: _emailTextController,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person_outline_outlined),
                                  labelText : 'Email',
                                  hintText: 'Masukan Email',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.call_end_outlined),
                                  labelText : 'No Telepon',
                                  hintText: 'Masukan Nomor telepon',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            TextFormField(
                              controller: _passwordTextController,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.fingerprint),
                                  labelText : 'Password',
                                  hintText: 'Masukan Password',
                                  border: OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.remove_red_eye_sharp),
                                  )
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            TextFormField(
                              controller: _confirmpasswordTextController,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.fingerprint),
                                  labelText : 'Confirm Password',
                                  hintText: 'Masukan Password Kembali',
                                  border: OutlineInputBorder()
                              ),
                            ),
                            const SizedBox(height: 30.0-10),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () => signUp(context),
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(),
                                  foregroundColor: Colors.white,
                                  backgroundColor: kButton1,
                                  side: BorderSide(color: kButton1),
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                ),
                                child: Text('DAFTAR AKUN'),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('Atau'),
                                SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: OutlinedButton.icon(
                                    onPressed: () {},
                                    label: Text('Masuk Lewat Google'),
                                    icon: Image(image: AssetImage(google), width: 25.0),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.black, backgroundColor: Colors.white, // Atur warna teks menjadi hitam (opsional)
                                      side: BorderSide(color: Colors.black),
                                      padding: EdgeInsets.symmetric(vertical: 15),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                TextButton(
                                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()),
                                    );
                                    },
                                    child: Text.rich(
                                        TextSpan(
                                            text: 'Sudah Punya Akun?',
                                            style: Theme.of(context).textTheme.bodySmall,
                                            children: const[
                                              TextSpan(
                                                text: ' Login Sekarang',
                                                style: TextStyle(color: Colors.blue),
                                              )
                                            ]
                                        )
                                    )
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}