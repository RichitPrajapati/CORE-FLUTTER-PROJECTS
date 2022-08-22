import 'dart:io';
import 'package:flutter/material.dart';
import 'package:invoice/globlas.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;
class Pdf_Page extends StatefulWidget {
  const Pdf_Page({Key? key}) : super(key: key);
  @override
  State<Pdf_Page> createState() => _Pdf_PageState();
}
class _Pdf_PageState extends State<Pdf_Page> {
  final invoicepdf = pw.Document();
  // final imageo = pw.MemoryImage(
  //   File(Globel.image!.path).readAsBytesSync(),
  // );
  TextStyle title = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  TextStyle subtitle = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: Colors.red,
  );
  TextStyle mystyle2 = const TextStyle(fontSize: 16, color: Colors.black87,fontWeight: FontWeight.w700);
  Divider mydivider = const Divider(
    thickness: 2,
    color: Colors.black,
  );
  @override
  void initState() {
    super.initState();
    invoicepdf.addPage(
      pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            var title = pw.TextStyle(
                fontSize: 20,
                fontWeight: pw.FontWeight.bold,
                decoration: pw.TextDecoration.underline,
                decorationThickness: 2);
            var subtitle = const pw.TextStyle(
              fontSize: 16,
            );
            var invoice = const pw.TextStyle(
              fontSize: 32,
            );
            var mystyle2 = const pw.TextStyle(
              fontSize: 15,
            );
            return pw.Container(
              height: double.infinity,
              width: double.infinity,
              margin: pw.EdgeInsets.all(20),
              alignment: pw.Alignment.topLeft,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Container(
                            height: 80,
                            width: 100,
                            // child: pw.Image(imageo),
                          ),
                        ],
                      ),
//invoice details ==============
                      pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.end,
                        children: [
                          pw.Text(
                            "Invoice",
                            style: invoice,
                          ),
                          pw.SizedBox(
                            height: 15,
                          ),

                          pw.Text(
                            "INVOICE NO.",
                            style: subtitle,
                          ),
                          pw.Text(
                            " ${Globel.invoicenumber}",
                            style: mystyle2,
                          ),
                          pw.SizedBox(
                            height: 15,
                          ),

                          pw.Text(
                            "INVOICE DATE.",
                            style: subtitle,
                          ),
                          pw.Text(
                            " ${Globel.invoicedate}",
                            style: mystyle2,
                          ),
                        ],
                      ),
                    ],
                  ),
//================================================
                  pw.Divider(
                    thickness: 2,
                  ),
//client details================
                  pw.Text(
                    "CUSTOMER DETAIL'S",
                    style: title,
                  ),
                  pw.SizedBox(
                    height: 15,
                  ),
                  pw.Text(
                    " ${Globel.clientname}",
                    style: mystyle2,
                  ),
                  pw.Text(
                    " ${Globel.clientaddress1}",
                    style: mystyle2,
                  ),
                  pw.Text(
                    "${Globel.clientphone}",
                    style: mystyle2,
                  ),
// ==========================================
                  pw.Divider(
                    thickness: 2,
                  ),
//Description================
                  pw.Row(
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "DESCRIPTION",
                            style: subtitle,
                          ),
                          pw.SizedBox(
                            width: 170,
                            child: pw.Divider(
                              thickness: 1,
                            ),
                          ),
                          ...Globel.allitems.map((e) => pw.Text(e['name'])).toList(),
                          pw.SizedBox(
                            width: 170,
                            child: pw.Divider(
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "QUNTITY",
                            style: subtitle,
                          ),
                          pw.SizedBox(
                            width: 100,
                            child: pw.Divider(
                              thickness: 2,
                            ),
                          ),
                          ...Globel.allqty.map((e) => pw.Text("${e}")).toList(),
                          pw.SizedBox(
                            width: 100,
                            child: pw.Divider(
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "RATE",
                            style: subtitle,
                          ),
                          pw.SizedBox(
                            width: 80,
                            child: pw.Divider(
                              thickness: 2,
                            ),
                          ),
                          ...Globel.rate
                              .map((e) => pw.Text("${e}"))
                              .toList(),
                          pw.SizedBox(
                            width: 80,
                            child: pw.Divider(
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            "AMOUNT",
                            style: subtitle,
                          ),
                          pw.SizedBox(
                            width: 92,
                            child: pw.Divider(
                              thickness: 2,
                            ),
                          ),
                          ...Globel.amount.map((e) => pw.Text("${e}")).toList(),
                          pw.SizedBox(
                            width: 92,
                            child: pw.Divider(
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  pw.Transform.translate(
                    offset: PdfPoint(170, 0),
                    child: pw.Column(
                      children: [
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.Text(
                              "TAXEBLE AMT: ",
                              style: subtitle,
                            ),
                            pw.SizedBox(
                              width: 85,
                            ),
                            pw.Text("Rs.${Globel.subtotal}"),
                          ],
                        ),
                        pw.Divider(
                          thickness: 2,
                          endIndent: 170,
                        ),
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.Text(
                              "GST 18%: ",
                              style: subtitle,
                            ),
                            pw.SizedBox(
                              width: 135,
                            ),
                            pw.Text("18% (Rs.${Globel.gst.toInt()})"),
                          ],
                        ),
                        pw.Divider(
                          thickness: 2,
                          endIndent: 170,
// color: Colors.black,
                        ),
                        pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.Text(
                              "TOTAL: ",
                              style: subtitle,
                            ),
                            pw.SizedBox(
                              width: 119,
                            ),
                            pw.Text("Rs.${Globel.total.toInt()}"),
                          ],
                        ),
                        pw.Divider(
                          thickness: 2,
                          endIndent: 170,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("PDF"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                Directory? tempDir = await getExternalStorageDirectory();
                File file = File('${tempDir!.path}/invoice.pdf');
                print(file);
                await file.writeAsBytes(await invoicepdf.save());
              },
              icon: const Icon(Icons.save_alt)),
          IconButton(
              onPressed: () async {
// Uint8List bytes = await invoicepdf.save();
                await Printing.layoutPdf(
                    onLayout: (format) async => invoicepdf.save());
              },
              icon: const Icon(Icons.print)),
        ],
      ),
      body: Container(
        height: hight,
        width: width,
        margin: const EdgeInsets.all(20),
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "INVOICE",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.red
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CUSTOMER DETAIL'S",
                  style: TextStyle( color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text(
                 "Name:-" " ${Globel.clientname}",
                  style: mystyle2,
                ),
                    SizedBox(height: 5),
                Text(
                  "Address:-"" ${Globel.clientaddress1}",
                  style: mystyle2,
                ),
                    SizedBox(height: 5),
                Text(
                  "Mo.NO:- ${Globel.clientphone}",
                  style: mystyle2,
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "INVOICE NO.",
                      style: subtitle,
                    ),
                    Text(
                      " ${Globel.invoicenumber}",
                      style: mystyle2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "INVOICE DATE",
                      style: subtitle,
                    ),
                    Text(
                      "${Globel.invoicedate}",
                      style: mystyle2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DESCRIPTION",
                      style: subtitle,
                    ),
                    SizedBox(
                      width: 190,
                      child: mydivider,
                    ),
                    // ...Globel.allitems.map((e) => Text(e['name'])).toList(),
                    Text("${MainCourse.ChesseButterMasala}"),
                    SizedBox(
                      width: 190,
                      child: mydivider,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "QUNTITY",
                      style: subtitle,
                    ),
                    SizedBox(
                      width: 60,
                      child: mydivider,
                    ),
                    Text("${MainCourse.countChesseButterMasala}"),
                    //...Globel.allqty.map((e) => Text("${e}")).toList(),
                    SizedBox(
                      width: 60,
                      child: mydivider,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "RATE",
                      style: subtitle,
                    ),

                    SizedBox(
                      width: 60,
                      child: mydivider,
                    ),
                    Text("${Rate.FixPaneerButterMasala}"),
                    //...Globel.allrate.map((e) => Text("${e}")).toList(),
                    SizedBox(
                      width: 60,
                      child: mydivider,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "AMOUNT",
                      style: subtitle,
                    ),
                    SizedBox(
                      width: 60,
                      child: mydivider,
                    ),
                    Text("${MainCourse.totalCheeseButterMasala}",),
                    SizedBox(
                      width: 60,
                      child: mydivider,
                    ),
                  ],
                ),
              ],
            ),
            Transform.translate(
              offset: const Offset(120, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "TAXEBLE AMT: ",
                        style: subtitle,
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Text("₹ ${Globel.subtotal}"),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    endIndent: 120,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "            GST 5%:",
                        style: subtitle,
                      ),
                      const SizedBox(
                        width: 105 ,
                      ),
                      Text("₹ ${Globel.gst}"),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    endIndent: 120,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "              TOTAL: ",
                        style: subtitle,
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Text("      ₹ ${Globel.total}"),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    endIndent: 120,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
        ]
      ),
    ),
    );
  }
}