import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:livevideocall/features/presentation/pages/country_Page.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      backgroundColor: Colors.white,
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400)
      )
    ),
    home: const CountryPage(),
  ));
}