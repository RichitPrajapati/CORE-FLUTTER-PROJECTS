import 'package:flutter/material.dart';
import 'globlas.dart';
import 'dart:io';
import 'dart:math';
class Maincourse extends StatefulWidget {
  const Maincourse({Key? key}) : super(key: key);

  @override
  State<Maincourse> createState() => _MaincourseState();
}

class _MaincourseState extends State<Maincourse> {


@override
void initState() {

}

@override
Widget build(BuildContext context) {
  double _height = MediaQuery
      .of(context)
      .size
      .height;
  double _width = MediaQuery
      .of(context)
      .size
      .width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("MAIN COURSE🍴🍜"),
        centerTitle: true,
      ),
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
            child: Column(
              children: [
                Expanded(flex: 14,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "1)  CHESSE BUTTER MASALA",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
        child:  Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [Text("      Rs.130                             ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),

                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.add,),
                    onPressed: (){
                      setState(() {
                       MainCourse.countChesseButterMasala++;

                       MainCourse.totalCheeseButterMasala = MainCourse.countChesseButterMasala * 130;

                       if(MainCourse.countChesseButterMasala == 0){
                         MainCourse.ChesseButterMasala = '';
                       }else{
                         MainCourse.ChesseButterMasala = 'CHESSE BUTTER MASALA';
                       }


                      });
                    },
                  ),
                    Text("${MainCourse.countChesseButterMasala}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                    FloatingActionButton(heroTag: null,
                      child:Icon(Icons.remove),
                      onPressed: (){

                        setState(() {

                          if(MainCourse.countChesseButterMasala >0){
                            MainCourse.countChesseButterMasala--;
                          }
                          MainCourse.totalCheeseButterMasala = MainCourse.countChesseButterMasala * 130;
                          if(MainCourse.countChesseButterMasala == 0){
                            MainCourse.ChesseButterMasala = '';
                          }else{
                            MainCourse.ChesseButterMasala = 'CHESSE BUTTER MASALA';
                          }

                        });

                      },
                    ),
                  ],
          ),
        ),
      ),
    const SizedBox(
    height: 15,),

    const  Text(
      "2)  PANEER BUTTER MASALA",
      style: TextStyle(
          fontSize: 20,
          color: Colors.red,
          fontWeight: FontWeight.w600),
    ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
        child:  Padding(
          padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.130                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countPaneerButterMasala++;

                      MainCourse.totalPaneerButterMasala = MainCourse.countPaneerButterMasala * 130;
                      if(MainCourse.countPaneerButterMasala == 0){
                        MainCourse.PaneerButterMasala = '';
                      }else{
                        MainCourse.PaneerButterMasala = 'PANEER BUTTER MASALA';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countPaneerButterMasala}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countPaneerButterMasala >0){
                          MainCourse.countPaneerButterMasala--;
                        }
                        MainCourse.totalPaneerButterMasala = MainCourse.countPaneerButterMasala * 130;
                        if(MainCourse.countPaneerButterMasala == 0){
                          MainCourse.PaneerButterMasala = '';
                        }else{
                          MainCourse.PaneerButterMasala = 'PANEER BUTTER MASALA';
                        }

                      });

                    },
                  ),
          ],
        ),
      ),
      ),
      const SizedBox(
        height: 15,),
      Text(
        "3)  PANEER TIKKA MASALA",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
        child:  Padding(
          padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.140                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countPaneerTikkaMasala++;
                      MainCourse.totalPaneerTikkaMasala = MainCourse.countPaneerTikkaMasala * 140;
                      if(MainCourse.countPaneerTikkaMasala== 0){
                        MainCourse.PaneerTikkaMasala = '';
                      }else{
                        MainCourse.PaneerTikkaMasala = 'PANEER TIKKA MASALA';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countPaneerTikkaMasala}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countPaneerTikkaMasala >0){
                          MainCourse.countPaneerTikkaMasala--;
                        }
                        MainCourse.totalPaneerTikkaMasala = MainCourse.countPaneerTikkaMasala * 140;
                        if(MainCourse.countPaneerTikkaMasala== 0){
                          MainCourse.PaneerTikkaMasala = '';
                        }else{
                          MainCourse.PaneerTikkaMasala = 'PANEER TIKKA MASALA';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
  ),
      const SizedBox(
        height: 15,),
      Text(
        "4)  VEG.KOLHAPURI",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.170                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countVegKolhapuri++;
                      MainCourse.totalVegKolhapuri = MainCourse.countVegKolhapuri * 170;
                      if(MainCourse.countVegKolhapuri== 0){
                        MainCourse.Vegkolhapuri= '';
                      }else{
                        MainCourse.Vegkolhapuri = 'VEG KOLHAPURI';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countVegKolhapuri}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countVegKolhapuri >0){
                          MainCourse.countVegKolhapuri--;
                        }
                        MainCourse.totalVegKolhapuri = MainCourse.countVegKolhapuri * 170;
                        if(MainCourse.countVegKolhapuri== 0){
                          MainCourse.Vegkolhapuri= '';
                        }else{
                          MainCourse.Vegkolhapuri = 'VEG KOLHAPURI';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
  ),
      const SizedBox(
        height: 15,),
      Text(
        "5)  VEG.ANGARA",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.120                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countVegAngara++;
                      MainCourse.totalVegAngara = MainCourse.countVegAngara * 120;
                      if(MainCourse.countVegAngara== 0){
                        MainCourse.VegAngara= '';
                      }else{
                        MainCourse.VegAngara = 'VEG ANGARA';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countVegAngara}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countVegAngara >0){
                          MainCourse.countVegAngara--;
                        }
                        MainCourse.totalVegAngara = MainCourse.countVegAngara * 120;
                        if(MainCourse.countVegAngara== 0){
                          MainCourse.VegAngara= '';
                        }else{
                          MainCourse.VegAngara = 'VEG ANGARA';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
      ),
      const SizedBox(
        height: 15,),
      Text(
        "6)  BUTTER CHAPATI",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.10                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countButterChapati++;
                      MainCourse.totalButterChapati = MainCourse.countButterChapati * 10;
                      if(MainCourse.ButterChapati== 0){
                        MainCourse.ButterChapati= '';
                      }else{
                        MainCourse.ButterChapati = 'BUTTER CHAPATI';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countButterChapati}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countButterChapati >0){
                          MainCourse.countButterChapati--;
                        }
                        MainCourse.totalButterChapati = MainCourse.countButterChapati * 10;
                        if(MainCourse.ButterChapati== 0){
                          MainCourse.ButterChapati= '';
                        }else{
                          MainCourse.ButterChapati = 'BUTTER CHAPATI';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
  ),
      const SizedBox(
        height: 15,),
      Text(
        "7) BUTTER NAAN",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.30                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countButterNaan++;
                      MainCourse.totalButterNaan = MainCourse.countButterNaan * 30;
                      if(MainCourse.ButterNaan== 0){
                        MainCourse.ButterNaan= '';
                      }else{
                        MainCourse.ButterNaan = 'BUTTER NAAN';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countChesseButterMasala}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countChesseButterMasala >0){
                          MainCourse.countChesseButterMasala--;
                        }
                        MainCourse.totalButterNaan = MainCourse.countButterNaan * 30;
                        if(MainCourse.ButterNaan== 0){
                          MainCourse.ButterNaan= '';
                        }else{
                          MainCourse.ButterNaan = 'BUTTER NAAN';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
  ),
      const SizedBox(
        height: 15,),
      Text(
        "8)  GARLIC NAAN",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.50                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countGarlicNaan++;
                      MainCourse.totalGarlicNaan = MainCourse.countGarlicNaan * 50;
                      if(MainCourse.GarlicNaan== 0){
                        MainCourse.GarlicNaan= '';
                      }else{
                        MainCourse.GarlicNaan = 'GARLIC NAAN';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countGarlicNaan}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countGarlicNaan >0){
                          MainCourse.countGarlicNaan--;
                        }
                        MainCourse.totalGarlicNaan = MainCourse.countGarlicNaan * 50;
                        if(MainCourse.GarlicNaan== 0){
                          MainCourse.GarlicNaan= '';
                        }else{
                          MainCourse.GarlicNaan = 'GARLIC NAAN';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
      ),
      const SizedBox(
        height: 15,),
      Text(
        "9)  JEERA RICE",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [
  Text("      RS.90                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countJeeraRice++;
                      MainCourse.totalJeeraRice = MainCourse.countJeeraRice * 90;
                      if(MainCourse.JeeraRice== 0){
                        MainCourse.JeeraRice= '';
                      }else{
                        MainCourse.JeeraRice = 'JEERA RISE';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countJeeraRice}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countJeeraRice >0){
                          MainCourse.countJeeraRice--;
                        }
                        MainCourse.totalJeeraRice = MainCourse.countJeeraRice * 90;
                        if(MainCourse.JeeraRice== 0){
                          MainCourse.JeeraRice= '';
                        }else{
                          MainCourse.JeeraRice = 'JEERA RISE';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
  ),
      const SizedBox(
        height: 15,),
      Text(
        "10)  DAL FRY",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.70                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countDalFry++;
                      MainCourse.totalDalFry = MainCourse.countDalFry * 70;
                      if(MainCourse.DalFry== 0){
                        MainCourse.DalFry= '';
                      }else{
                        MainCourse.DalFry= 'DAL FRY';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countDalFry}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countDalFry >0){
                          MainCourse.countDalFry--;
                        }
                        MainCourse.totalDalFry = MainCourse.countDalFry * 70;
                        if(MainCourse.DalFry== 0){
                          MainCourse.DalFry= '';
                        }else{
                          MainCourse.DalFry= 'DAL FRY';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
  ),
      const SizedBox(
        height: 15,),
      Text(
        "11)  DAL TADKA",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.90                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countDalTadka++;
                      MainCourse.totalDalTadka = MainCourse.countDalTadka * 90;
                      if(MainCourse.DalTadka== 0){
                        MainCourse.DalTadka= '';
                      }else{
                        MainCourse.DalTadka= 'DAL TADKA';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countDalTadka}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countDalTadka>0){
                          MainCourse.countDalTadka--;
                        }
                        MainCourse.totalDalTadka = MainCourse.countDalTadka * 90;
                        if(MainCourse.DalTadka== 0){
                          MainCourse.DalTadka= '';
                        }else{
                          MainCourse.DalTadka= 'DAL TADKA';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
      ),
      const SizedBox(
        height: 15,),
      Text(
        "12)  VEG.BIRIYANI",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.110                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countVegBiriyani++;
                      MainCourse.totalVegBiriyani = MainCourse.countVegBiriyani * 110;
                      if(MainCourse.VegBiriyani== 0){
                        MainCourse.VegBiriyani= '';
                      }else{
                        MainCourse.VegBiriyani= 'VEG BIRIYANI';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countVegBiriyani}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countVegBiriyani >0){
                          MainCourse.countVegBiriyani--;
                        }
                        MainCourse.totalVegBiriyani = MainCourse.countVegBiriyani * 110;
                        if(MainCourse.VegBiriyani== 0){
                          MainCourse.VegBiriyani= '';
                        }else{
                          MainCourse.VegBiriyani= 'VEG BIRIYANI';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
      ),
      const SizedBox(
        height: 15,),
      Text(
        "13)  HYDRABADI VEG."
            "BIRIYANI",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
  child:  Padding(
  padding: const EdgeInsets.all(2.0),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("      RS.130                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countHydrabadiBiriyani++;
                      MainCourse.totalHydrabadiBiriyani = MainCourse.countHydrabadiBiriyani * 130;
                      if(MainCourse.HydrabadiBiriyani== 0){
                        MainCourse.HydrabadiBiriyani= '';
                      }else{
                        MainCourse.HydrabadiBiriyani= 'HYDRABADI BIRIYANI';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countHydrabadiBiriyani}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countHydrabadiBiriyani>0){
                          MainCourse.countHydrabadiBiriyani--;
                        }
                        MainCourse.totalHydrabadiBiriyani = MainCourse.countHydrabadiBiriyani * 130;
                        if(MainCourse.HydrabadiBiriyani== 0){
                          MainCourse.HydrabadiBiriyani= '';
                        }else{
                          MainCourse.HydrabadiBiriyani= 'HYDRABADI BIRIYANI';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),
      ),
      const SizedBox(
        height: 15,),
      Text(
        "14)  MASALA PAPAD",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("  RS.15                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countMasalaPapad++;
                      MainCourse.totalMasalaPapad = MainCourse.countMasalaPapad * 15;
                    });
                  },
          ),
                  Text("${MainCourse.countMasalaPapad}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countMasalaPapad >0){
                          MainCourse.countMasalaPapad--;
                        }
                        MainCourse.totalMasalaPapad = MainCourse.countMasalaPapad * 15;
                        if(MainCourse.MasalaPapad== 0){
                          MainCourse.MasalaPapad= '';
                        }else{
                          MainCourse.MasalaPapad= 'MASALA PAPAD';
                        }
                      });

                    },
                  ),
          ],
        ),
      ),

      const SizedBox(
        height: 15,),
      Text(
        "15)  BUTTER MILK",
        style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
          border: Border.all(
                  width: 2,
                  color: Colors.white70,
          ),
        ),

        height:35,
        width: double.infinity,
        alignment: Alignment.centerRight,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:
          [Text("  RS.10                            ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black54),),
            FloatingActionButton(heroTag: null,
                  child:Icon(Icons.add,),
                  onPressed: (){
                    setState(() {
                      MainCourse.countButterMilk++;
                      MainCourse.totalButterMilk = MainCourse.countButterMilk * 10;
                      if(MainCourse.MasalaPapad== 0){
                        MainCourse.MasalaPapad= '';
                      }else{
                        MainCourse.MasalaPapad= 'MASALA PAPAD';
                      }
                    });
                  },
          ),
                  Text("${MainCourse.countButterMilk}",style: TextStyle(fontSize: 20,color:Colors.black54),),
                  FloatingActionButton(heroTag: null,
                    child:Icon(Icons.remove),
                    onPressed: (){

                      setState(() {

                        if(MainCourse.countButterMilk >0){
                          MainCourse.countButterMilk--;
                        }
                        MainCourse.totalButterMilk = MainCourse.countButterMilk * 10;
                      });

                    },
                  ),
          ],
        ),
      ),
    ],
    ),
    ),
                ),
                Expanded(flex: -1,child: Text("TOTAL RS.${getTotal()}",style: TextStyle(color:Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),)
              ],
            ),
    ),

    );
  }

getTotal(){


  return MainCourse.totalCheeseButterMasala + MainCourse.totalPaneerButterMasala + MainCourse.totalPaneerTikkaMasala + MainCourse.totalVegKolhapuri + MainCourse.totalVegAngara
  + MainCourse.totalButterChapati + MainCourse.totalButterNaan + MainCourse.totalGarlicNaan + MainCourse.totalJeeraRice + MainCourse.totalDalTadka + MainCourse.totalDalFry + MainCourse.totalVegBiriyani
  + MainCourse.totalHydrabadiBiriyani + MainCourse.totalMasalaPapad + MainCourse.totalButterMilk;

}

}