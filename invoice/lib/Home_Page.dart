import 'package:flutter/material.dart';
import 'package:invoice/globlas.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<Row> allitemtextFilds = [];
  List<Row> allqtytextFilds = [];
  List<Row> allratetextFilds = [];
  List<TextEditingController> allitemcontrollers = <TextEditingController>[];
  List<TextEditingController> allqtycontrollers = <TextEditingController>[];
  List<TextEditingController> allratecontrollers = <TextEditingController>[];
  @override
  void initState() {
    super.initState();
    allitemcontrollers.add(TextEditingController());
    allqtycontrollers.add(TextEditingController());
    allratecontrollers.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    int i=0;
    List<Map<String, dynamic>> text = [
      {
        'id': 1,
        'icon': const Icon(Icons.food_bank,color: Colors.red,),
        'title': "CLIENT'S DETAILS",
        'subtitle': "Add Your Detail's",
        'trailing1': const Icon(Icons.arrow_forward_ios,color: Colors.red,),
        'trailing2': const Icon(Icons.check_circle),
        'route': "client",
      },
      {
        'id': 2,
        'icon': const Icon(Icons.food_bank,color: Colors.red,),
        'title': "INVOICE DETAILS",
        'subtitle': "Add Your Invoice Detail's",
        'trailing1': const Icon(Icons.arrow_forward_ios,color: Colors.red,),
        'trailing2': const Icon(Icons.check_circle),
        'route': "invoice",
      },
      {
        'id': 3,
        'icon': const Icon(Icons.food_bank,color: Colors.red,),
        'title': "MAIN COURSE",
        'subtitle': "Add Your Main Course",
        'trailing1': const Icon(Icons.arrow_forward_ios,color: Colors.red,),
        'trailing2': const Icon(Icons.check_circle),
        'route': "Maincourse",
      },
    ];
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
            context: context,
            builder: (Context) {
              return AlertDialog(
                title: Text("Exit"),
                content: Text("Are you sure you want to exit..?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);

                    },
                    child: Text("Yes"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No"),
                  ),
                ],
              );
            });
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("GEETHA REFRESHMENT",style: TextStyle(color: Colors.white),),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, left: 5, right: 5),
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                color: Colors.white70,
                child: Column(
                  children: text
                      .map(
                        (e) =>
                        Card(
                          elevation:15,
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).pushNamed(e['route']);
                            },
                            leading: e['icon'],
                            title: Text("${e['title']}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                            subtitle: Text("${e['subtitle']}",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15),),
                            trailing: e['trailing1'],
                          ),
                        ),
                  )
                      .toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, left: 20, right: 20,),
                height: 80,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('pdf');
                    setState(() {
                      allitemcontrollers
                          .map((e) => Globel.allitems.add,)
                          .toList();
                      allqtycontrollers
                          .map(
                              (b) => Globel.allqty.add(int.parse(b.text)))
                          .toList();
                      allratecontrollers
                          .map((c) =>
                          Globel.allqty.forEach((e) => Globel.amount.add(e *
                              Globel.rate
                                  .elementAt(Globel.allqty.indexOf(e)))));

                      for (int i = 0; i < Globel.amount.length; i++) {
                        Globel.subtotal += Globel.amount as int;
                      }
                      Globel.gst = Globel.subtotal * 0.5;
                      Globel.total = Globel.subtotal + Globel.gst;

                    });
                  },
                  child: Text(
                    "GENERATE PDF",style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
