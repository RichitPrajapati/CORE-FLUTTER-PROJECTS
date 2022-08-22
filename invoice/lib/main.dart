import 'package:flutter/material.dart';
import 'package:invoice/Home_Page.dart';
import 'package:invoice/PDF_Packege.dart';
import 'package:invoice/client_details.dart';
import 'package:invoice/invoice_detaiils.dart';
import 'package:invoice/main_course.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'invoice' : (context) => Invoice_Detail(),
        'client': (context) => Client_Page(),
        'Maincourse': (context) => Maincourse(),
        'pdf': (context) => Pdf_Page(),
      },
    ),
  );
}
