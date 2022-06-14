import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ext.dart';

class Tema{

  InputDec(String hintText , IconData icon){

    return InputDecoration(
      border: InputBorder.none,
      hintText: hintText,
      hintStyle: GoogleFonts.quicksand(
      color: Colors.white,
    ),
      prefixIcon: Icon(
        icon,
        color: renk("5BA7FB"),
      ),

    );
  }

InputBoxDec(){

    return  BoxDecoration(
      color: renk("333443"),
      borderRadius: BorderRadius.circular(20),

);

}

}