import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {

  //Color? color = Colors.grey[400];
  bool isMale=true;
  double height=120.0;
  double weight=40;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
            "BMI Calculator",style: TextStyle(
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/Malee.png"),
                            height: 90.0,
                            width: 90.0,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text("MALE",style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.red[900] :Colors.grey[900],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale= false;
                        });
                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/Femalee.png"),
                              height: 90.0,
                              width: 90.0,),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text("FEMALE",style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMale ? Colors.grey[900] :Colors.red[900]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )

          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(
                    "HEIGHT",style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline:TextBaseline.alphabetic ,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${height.round()}",style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900
                        ),),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text(
                          "CM",style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),),

                      ],
                    ),
                    Slider(
                      inactiveColor: Colors.white,
                      activeColor: Colors.red,
                        thumbColor: Colors.red[900],
                        value: height,
                        max:220.0 ,
                        min: 80.0,
                        onChanged: (value){
                          setState(() {
                            height=value;
                          });
                          print(value.round());
                        }),
                  ],
                ),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[900]
               ),

                ),
            ),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",style: TextStyle(
                              color:Colors.white ,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(
                            "${weight}",style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });

                                  },
                                   backgroundColor: Colors.red[900],
                                   heroTag: "weight-",
                                   mini:true ,
                                   child:Icon(Icons.remove) ,),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                backgroundColor: Colors.red[900],
                                heroTag: "weight+",
                                mini:true ,
                                child:Icon(Icons.add) ,),
                            ],
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[900]
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),
                          Text(
                            "${age}",style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                backgroundColor: Colors.red[900],
                                heroTag: "age-",
                                mini:true ,
                                child:Icon(Icons.remove) ,),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                backgroundColor: Colors.red[900],
                                heroTag: "age+",
                                mini:true ,
                                child:Icon(Icons.add) ,),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[900]
                      ),
                    ),
                  ),

                ],
              ),
            )
            ),
          Container(
            width: double.infinity,
            color: Colors.red[900],
            height: 50,
            child: MaterialButton(onPressed: ()
            {
              double result = weight / pow(height/100 ,3); // power الاس
              print(result.round());

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>BmiResult(
                        age : age,
                        isMale : isMale,
                        result : result.round(),),
                  ));
            },
            child: Text("CALCULATE",style: TextStyle(
              color: Colors.white
            ),),),
          ),

        ],
      ),
    );
  }
}
