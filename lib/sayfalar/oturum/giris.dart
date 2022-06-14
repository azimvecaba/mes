import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mes/sabitler/ext.dart';

import '../../sabitler/tema.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  Tema tema = Tema();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: renk(arka_renk),
          ),
          child: Column(
            children: [
              Container(
                width: 180,
                height: 180,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: renk("2D2F3A"),
                        width: 15,
                      ),
                    ),
                    child: Icon(
                      Icons.login,
                      size: 45,
                    )),
              ), //Logo Containeri
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Giriş Yapın",
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ), // Giriş Yapın Yazısı Containeri
              Container(
                decoration: tema.InputBoxDec(),
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                child: TextFormField(
                  decoration:
                      tema.InputDec('Kurum Mail Adresi', Icons.people_outline),
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                  ),
                ),
              ), // Kullanıcı Adı TextFieldler Containeri
              Container(
                decoration: tema.InputBoxDec(),
                margin:
                    EdgeInsets.only(top: 5, bottom: 30, right: 30, left: 30),
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                child: TextFormField(
                  decoration: tema.InputDec('Şifreniz', Icons.vpn_key_outlined),
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                  ),
                ), // Şifre TextFieldler Containeri
              ),
              InkWell(
            onTap:(){
              print("tıklandı");
            },
                child: Container(
                  //margin: EdgeInsets.symmetric(horizontal: 50),
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        renk("224ABE"),
                        renk("4E73DF"),
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: renk("2D2F3A"),
                          offset: Offset(0, 4),
                          blurRadius: 5,
                        )
                      ]),

                  child: Center(
                    child: Text(
                      "GİRİŞ",
                      style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
