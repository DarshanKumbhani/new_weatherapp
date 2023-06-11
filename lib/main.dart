import 'package:flutter/material.dart';
import 'package:new_weatherapp/provider/home_provider.dart';
import 'package:new_weatherapp/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Weatherpro()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Home_screen(),
        },
      ),
    )
  );
}

