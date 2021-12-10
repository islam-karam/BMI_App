import 'dart:math';
import 'package:bmi_calcutator_app/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120;
  int weight = 55;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50.0,
        title: Text(
          "BMI Calculator ",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(
                                () {
                              isMale = true;
                            },
                          );
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image(
                              //   image: AssetImage('assets/images/male.png'),
                              //   height: 70,
                              //   width: 70,
                              // ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: isMale ? Colors.blue : Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: !isMale ? Colors.blue : Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 13,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height, //start value in  the screen
                      max: 220, //eng value
                      min: 80, //minimum value
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag:'weight_' ,
                                mini: false,
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag:'weight+' ,
                                mini: false,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag:'age-' ,
                                mini: false,
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag:'age+' ,

                                mini: false,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                print(result.round());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>BMIResultScreen(
                        age: age,
                        isMale: isMale,
                        result: result.round(),
                      ),
                  ),
                );
              },
              height: 50,
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
