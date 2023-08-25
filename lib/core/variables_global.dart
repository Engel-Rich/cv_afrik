import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle primarystyle = GoogleFonts.poppins();

ElevatedButton appBouton({
  required void Function()? onPressed,
  required Widget? child,
}) =>
    ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0.0,
          padding: const EdgeInsets.all(12),
          backgroundColor: const Color.fromARGB(255, 165, 202, 250),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: child,
    );
