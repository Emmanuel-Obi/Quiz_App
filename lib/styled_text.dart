import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.outputText, {super.key});
  
  final String outputText;

  @override
  Widget build (BuildContext context) {
    return Text(
      outputText,
      style:  GoogleFonts.lato(
        color: Colors.white,
        fontSize: 24
      ),
    );
  }
}