import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'bmi_result_screen.dart';


class BMI_Screen extends StatefulWidget {
  @override
  _BMI_ScreenState createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMI_Screen> {
  bool isMale = true;
  double height = 180.0;
  int weight = 40;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'BMI Calculator'.tr,
        ),
      ),
      body: Column(
        children: [

          /*Male or Female Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               Icon(
                                Icons.male,
                                size: 100.0,
                                  color: !isMale ? Colors.white.withOpacity(0.8):Colors.black.withOpacity(0.8)
                              ),
                              const SizedBox(height: 10.0,),
                              Text(
                                'MALE'.tr,
                                style: TextStyle(
                                  fontSize: 20.0,
                                    color: !isMale ? Colors.white.withOpacity(0.8):Colors.black.withOpacity(0.8)
                                ),
                              ),
                            ]
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0,),
                          color: isMale ? Color(0xFF27FF91) : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0,),
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
                               Icon(
                                Icons.female,
                                size: 100.0,
                                  color: !isMale ? Colors.black.withOpacity(0.8):Colors.white.withOpacity(0.8),
                              ),
                              const SizedBox(height: 15.0,),
                              Text(
                                'FEMALE'.tr,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  //color: Colors.white.withOpacity(0.8),
                                  color: !isMale ? Colors.black.withOpacity(0.8):Colors.white.withOpacity(0.8)

                                ),
                              ),
                            ]
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0,),
                          color: !isMale ? Color(0xFF27FF91) : Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /*Height Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0,),
                  color: Color.fromARGB(255, 16, 19, 35),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT'.tr,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(width: 5.0,),
                          Text(
                            'CM'.tr,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 80.0,
                        max: 220.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        activeColor:Color(0xFF27FF91),
                        inactiveColor: Color.fromARGB(255, 88, 89, 104),
                        thumbColor:Color(0xFF27FF91)
                      ),
                    ]
                ),
              ),
            ),
          ),

          /*Weight and Age Section*/
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
                              'WEIGHT'.tr +" "+ "(KG)",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            Text(
                              "${weight}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 60.0,
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
                                  backgroundColor:Color(0xFF27FF91),
                                  heroTag: 'Weight-',
                                  mini: true,
                                  child:  Icon(
                                    Icons.remove,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'Weight+',
                                  backgroundColor:Color(0xFF27FF91),
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0,),
                          color: Color.fromARGB(255, 16, 19, 35),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE'.tr,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            Text(
                              "${age}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 60.0,
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
                                  backgroundColor:Color(0xFF27FF91),
                                  heroTag: 'age-',
                                  mini: true,
                                  child:  Icon(
                                    Icons.remove,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor:Color(0xFF27FF91),
                                  heroTag: 'age+',
                                  mini: true,
                                  child:  Icon(
                                    Icons.add,
                                    color: Colors.black.withOpacity(0.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0,),
                          color: Color.fromARGB(255, 16, 19, 35),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),

          /*Calculate Button Section*/
          // Container(
          //   width: double.infinity,
          //   height: 75.0,
          //   color: Colors.black,
          //   child: MaterialButton(
          //     onPressed: () {
          //       double result = weight / pow(height / 100, 2);
          //       print(result.round());
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) =>
          //                 BMIResultScreen(
          //                   result: result,
          //                   age: age,
          //                   isMale: isMale,
          //                 ),
          //           )
          //       );
          //     },
          //     child: const Text(
          //       "CALCULATE",
          //       style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         color: Colors.white,
          //         fontSize: 20.0,
          //       ),
          //     ),
          //   ),
          // )
          Container(
            height: MediaQuery.of(context).size.height*.1,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),

                      )
                  ),
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 16, 19, 35)),
                ),


                onPressed: () {
                  double bmi = weight / pow(height / 100, 2);

                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        backgroundColor: Colors.black,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(40.0),
                          ),
                        ),


                          // context and builder are
                          // required properties in this widget
                          context: context,
                          builder: (BuildContext context) {


                          // we set up a container inside which
                          // we create center column and display text
                          return Container(
                            height: 200,

                            child: Column(
                              children: [

                                Container(
                                    height: 200,
                                    child: Center(
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,

                                        children: <Widget>[
                                          Image(image: AssetImage("assets/images/bmi-range-rosa.jpeg")),

                                          Text(bmi.toStringAsFixed(2),
                                            style: TextStyle(
                                                color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 50
                                            ),),
                                        ],
                                    ),
                                    ),
                                ),
                              ],
                            ),
                          );
                          },
                      );

    },


                  //sheetController.then((value) {});
                 // print(rosaTabs.heading.tr);

                child: Text("CALCULATE",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color:Color(0xFF27FF91)
                ),)),
          ),

        ],
      ),
    );
  }
}