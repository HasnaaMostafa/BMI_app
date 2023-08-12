import 'package:flutter/material.dart';

import 'bmi_screen.dart';
//import 'bmi_result_screen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{

  //constructor
  //build =main for MyApp

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BmiCalculator(),);
        //BmiResult(),);


  }

}
