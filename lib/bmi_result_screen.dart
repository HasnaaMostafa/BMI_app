import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  BmiResult({
    required this.result,
    required this.age,
    required this.isMale
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[900],
        title: Text(
          "BMI RESULT",
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:Icon(
            Icons.keyboard_arrow_left,
          ) ,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale ? "Male": "Female"}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),),
            Text(
              "Result : $result",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),),
            Text(
              "Age : $age",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),),
          ],
        ),
      ),

    );
  }
}
