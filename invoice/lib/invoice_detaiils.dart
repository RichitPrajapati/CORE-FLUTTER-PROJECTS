import 'dart:math';
import 'package:flutter/material.dart';
import 'globlas.dart';
class Invoice_Detail extends StatefulWidget {
  const Invoice_Detail({Key? key}) : super(key: key);
  @override
  State<Invoice_Detail> createState() => _Invoice_DetailState();
}
class _Invoice_DetailState extends State<Invoice_Detail> {
  int? ans;
  Random r1 = Random();
  GlobalKey<FormState> invoicedetailkey = GlobalKey<FormState>();
  TextEditingController invoicedatecontroller = TextEditingController();
  dynamic selectGST = "5%";
  @override
  void initState() {
    super.initState();
    ans = r1.nextInt(999999);
// Globel.invoicenumber =ans.toString();
  }
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.red,
        title: const Text("Invoice Details"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Form(
            key: invoicedetailkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
//Invoice num================
                  const Text(
                    "Invoice no.",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text("\t\t${ans}"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        width: 2,
                        color: Colors.black38,
                      ),
                    ),
                  ),
//Invoice date==================
                  const SizedBox(
                    height: 9,
                  ),
                  const Text(
                    "Invoice Date",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: invoicedatecontroller,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter invoice Date...";
                      }
                      return null;
                    },
                    onSaved: (val){
                      setState(() {
                        Globel.invoicedate = val as int?;
                      });
                    },
                    decoration: const InputDecoration(
                      hintMaxLines: 4,
                      hintText: "DD/MM/YY",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black38,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black38,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
//Due Date=======================
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            if (invoicedetailkey.currentState!.validate()) {
                              invoicedetailkey.currentState!.save();
                            }
                            setState(() {
                              Globel.invoicenumber = ans;
                            });
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                          child: const Text("SAVE")),
                      ElevatedButton(
                          onPressed: () {
                            invoicedetailkey.currentState!.reset();
                            invoicedatecontroller.clear();
                            setState(() {
                              Globel.invoicenumber = "" as int?;
                              Globel.invoicedate = "" as int?;
                            });
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.red),
                          child: const Text("CLEAR")),
                    ],
                  ),
            ]
    ),
    ),
    ),
      ),
    );
  }
}