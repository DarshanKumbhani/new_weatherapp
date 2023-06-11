import 'package:flutter/cupertino.dart';

import '../api_helper/home_helper.dart';
import '../model_class/class.dart';

class Weatherpro extends ChangeNotifier


{


  WetherModel w1=WetherModel();

  String city="Surat";

  void changeCity(String value)
  {
    city = value;

    notifyListeners();
  }

  List cityList=[
    "Surat",
    "Ahmedabad",
    "Rajkot",
    "Amreli",
    "Gandhi nagar",
  ];

  void apiDataParsing()
  async {
    w1 = await Weather_api.weather_api.api_Data();
    notifyListeners();
  }
   List l1 = [



     "Surat",
     "Bharuch",
     "Ahemdabad",
     "Dwarka",
     "Dang",
     "Kutch",
     "Tapi",

   ];
   List l2 = [
     "Gujrat",
     "Maharastra",
     "Jammu ",
     "Goa",
     "Panjab",
     "Himachal pradesh",
     "Madhya pradesh",

   ];
}