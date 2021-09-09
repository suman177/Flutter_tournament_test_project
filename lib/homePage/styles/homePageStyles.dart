import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePageStyles {
  HomePageStyles._();

  static bottomNavigationBarText() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
      backgroundColor: Colors.transparent,
      fontSize: 10,
      fontWeight: FontWeight.w300,
    ));
  }

  static textBarTextWhite() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
            backgroundColor: Colors.transparent,
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.white));
  }

  static customColorFontForButtomBar(Color color) {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
      backgroundColor: Colors.transparent,
      fontSize: 10,
      color: color,
      fontWeight: FontWeight.w500,
    ));
  }

  static textHeaderBlack16() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
      color: Colors.brown[800],
      backgroundColor: Colors.transparent,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ));
  }

  static textDataBlack13() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
      color: Colors.brown[800],
      backgroundColor: Colors.transparent,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ));
  }

  static indexText() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
      color: Color(0xFF801E48),
      backgroundColor: Colors.transparent,
      fontSize: 16,
      letterSpacing: 0.3,
      fontWeight: FontWeight.w700,
    ));
  }

  static headerTextWhite22() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
      color: Colors.white,
      backgroundColor: Colors.transparent,
      fontSize: 22,
      letterSpacing: 0.3,
      fontWeight: FontWeight.w500,
    ));
  }
}
