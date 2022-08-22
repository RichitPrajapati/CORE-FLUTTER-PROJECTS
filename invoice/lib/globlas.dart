import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';

class Globel{
  static File? image;
  static var invoicedetails;
  static int ? invoicedate;
  static int ? invoicenumber ;
  static String ? clientname ;
  static String ? clientaddress1 ;
  static String ?clientphone;
  static List<Map> allitems=[];
  static var allqty=[];
  static var rate=[];
  static var amount=[];
  static var subtotal=0;
  static num gst=0;
  static dynamic initialDropdownval = null;
  static num gstrate = 0;
  static num total = 0;
    }
    class MainCourse{
      static int  countChesseButterMasala=0;
      static String? ChesseButterMasala;
      static int  countPaneerButterMasala=0;
      static String? PaneerButterMasala;
      static int  countPaneerTikkaMasala=0;
      static String? PaneerTikkaMasala;
      static int  countVegKolhapuri=0;
      static String? Vegkolhapuri;
      static int  countVegAngara=0;
      static String? VegAngara;
      static int  countButterChapati=0;
      static String? ButterChapati;
      static int  countButterNaan=0;
      static String? ButterNaan;
      static int  countGarlicNaan=0;
      static String? GarlicNaan;
      static int  countJeeraRice=0;
      static String? JeeraRice;
      static int  countDalFry=0;
      static String? DalFry;
      static int  countDalTadka=0;
      static String? DalTadka;
      static int  countVegBiriyani=0;
      static String? VegBiriyani;
      static int  countHydrabadiBiriyani=0;
      static String? HydrabadiBiriyani;
      static int  countMasalaPapad=0;
      static String? MasalaPapad;
      static int  countButterMilk=0;
      static String? ButterMilk;
      static int totalCheeseButterMasala =0;
      static int totalPaneerButterMasala =0;
      static int totalPaneerTikkaMasala =0;
      static int totalVegKolhapuri =0;
      static int totalVegAngara =0;
      static int totalButterChapati =0;
      static int totalButterNaan =0;
      static int totalGarlicNaan =0;
      static int totalJeeraRice =0;
      static int totalDalFry =0;
      static int totalDalTadka =0;
      static int totalVegBiriyani =0;
      static int totalHydrabadiBiriyani =0;
      static int totalMasalaPapad =0;
      static int totalButterMilk =0;
      static int totalMainCourse = 0;
    }
    class Rate{
      static int FixPaneerButterMasala=130;
    }

