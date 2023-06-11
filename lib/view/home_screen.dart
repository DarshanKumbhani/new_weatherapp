import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

Weatherpro? providerF;
Weatherpro? providerT;

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<Weatherpro>(context, listen: false);
    providerT = Provider.of<Weatherpro>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                SizedBox(width: 50,),
                Text("Weather App", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18),),
                SizedBox(
                  width: 120,
                ),
                Icon(
                  Icons.cloud,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return city(index);
              },
              itemCount: providerF!.l1.length,
            ),
          ),
          Divider(
            height: 2,
            color: Colors.white,
          ),
          SizedBox(
            height: 90,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return state(index);
              },
              itemCount: providerF!.l1.length,
            ),
          ),
          Divider(
            height: 2,
            color: Colors.white,
          ),
          SizedBox(
            height: 30,
          ),

          Center(
            child: Text(
              "Dwarka",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
          ),
          Container(
              height: 130,
              width: 130,
              alignment: Alignment.center,
              child: Image.asset("assets/Images/surya.png")),
          // Container(
          //   height: 200,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.white54,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          // )
          Text("41°C", style: TextStyle(fontSize: 40, color: Colors.white),),

          Text("Precipitation: 0%",
            style: TextStyle(fontSize: 15, color: Colors.white),),
          Text("Wind: 19 km/h",style: TextStyle(fontSize: 15,color: Colors.white),),

          SizedBox(height: 10,),
          Divider(
            height: 2,
            color: Colors.white,
          ),
          SizedBox(height: 1,),
          Center(
            child: Text(
              "Himachalpradesh",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
          ),
          Container(
              height: 130,
              width: 130,
              alignment: Alignment.center,
              child: Image.asset("assets/Images/surya.png")),
          Text("23°C", style: TextStyle(fontSize: 40, color: Colors.white),),

          Text("Precipitation: 10%",style: TextStyle(fontSize: 15,color: Colors.white),),
          Text("Wind: 10 km/h",style: TextStyle(fontSize: 15,color: Colors.white),),
            SizedBox(height: 10,),
          Divider(
            height: 2,
            color: Colors.white,
          ),
        ]),
      ),
    );
  }

  Widget city(int index) {
    return Container(
      height: 40,
      width: 60,
      alignment: Alignment.center,
      child: Text(
        "${providerT!.l1[index]}",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget state(int index) {
    return Container(
      height: 40,
      width: 60,
      alignment: Alignment.center,
      child: Text(
        "${providerT!.l2[index]}",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
