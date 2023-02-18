import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rosaapp/screens/bmi.dart';
import 'package:rosaapp/widgets/bubbles.dart';
import '../../widgets/contact_button.dart';
import '../widgets/tab_list.dart';



class HomeScreen extends StatefulWidget {




 const HomeScreen({Key key}) : super(key: key);




  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  bool _enabled = true;






  @override
  Widget build(BuildContext context) {
    double conheight = MediaQuery
        .of(context)
        .size
        .height * 0.10;
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Color(0xFF050505),
        appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 5,

          title: const Text("Rosa Groups"),
          actions: [
            Transform.scale(
              scale: 1.2,
              child: Switch(

                value: _enabled,

                onChanged: (bool value) {
                  setState(() {
                    _enabled = value;
                    if (_enabled == false){
                      var locale = const Locale('en','US');
                      Get.updateLocale(locale);
                    }
                    else if(_enabled== true){
                      var locale = const Locale('fr','FR');
                      Get.updateLocale(locale);
                    }

                  });
                },

                trackColor:MaterialStateProperty.resolveWith((states) => Colors.white60),

                activeThumbImage: const AssetImage('assets/images/France-Flag-Round-Image.png'),
                inactiveThumbImage: const AssetImage('assets/images/1024px-United-states_flag_icon_round.svg.png'),

              ),
            ),
         ],
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(



                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 16.0,left: 26),
                      child: RichText(


                        text: TextSpan(
                          text: 'intro1'.tr,
                          style: const TextStyle(
                              fontSize: 30,
                            color: Color(0xFF27FF91),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 20,bottom: 20),
                      child: Text('intro2'.tr, style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white70
                      ),),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(20.0),
                    //   child: Container(
                    //
                    //     decoration: BoxDecoration(
                    //         color: Color(0xFFD0EAF9),
                    //       borderRadius: BorderRadius.circular(30)
                    //     ),
                    //
                    //     height: (MediaQuery
                    //         .of(context)
                    //         .size
                    //         .height - AppBar().preferredSize.height - conheight) *
                    //         0.15,
                    //     width: MediaQuery.of(context).size.width*0.90,
                    //     child: Text("Hi") ,
                    //   ),
                    // )


                  ],

                ),
              ),

              Padding(

                  padding: const EdgeInsets.only(top: 0.0, left: 10, right: 20),
                  child: Container(

                    height: (MediaQuery
                        .of(context)
                        .size
                        .height - AppBar().preferredSize.height - conheight) *
                        0.90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),

                    child: BubbleMenuScreen(),
                  )
              ),


            ],

          ),

        ),
        extendBody: true,

        bottomNavigationBar:
        // Container(
        //   margin: EdgeInsets.only(bottom: 25,left: 10,right: 10),
        //
        //
        //
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(40),
        //     color: Colors.white.withOpacity(0.1),
        //
        //     boxShadow: [
        //       BoxShadow(
        //         blurRadius: 20,
        //         color: Colors.black.withOpacity(.1),
        //       )
        //     ],
        //   ),
        //   child: buildBlur(
        //     borderRadius: BorderRadius.circular(40),
        //
        //     child: Container(
        //       child: Container(
        //
        //         child: Padding(
        //
        //
        //           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        //           child: GNav(
        //             rippleColor: Colors.grey[300],
        //             hoverColor: Colors.grey[100],
        //             gap: 8,
        //             activeColor: Color(0xFF27FF91),
        //             iconSize: 24,
        //             padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        //             duration: Duration(milliseconds: 400),
        //             tabBackgroundColor: Colors.black12,
        //             color: Colors.white,
        //             tabs: [
        //               GButton(
        //                 icon: Icons.home,
        //                 text: 'Home',
        //
        //               ),
        //
        //               GButton(
        //                 icon: Icons.calculate_outlined,
        //                 text: 'BMI Calculator'.tr,
        //               ),
        //               GButton(
        //                 icon: Icons.call,
        //                 text: 'Contact',
        //               ),
        //             ],
        //             selectedIndex: _selectedIndex,
        //             onTabChange: (index) {
        //               setState(() {
        //                 _selectedIndex = index;
        //                 print(_selectedIndex);
        //                 if(_selectedIndex==1){
        //                   Get.to(BMI_Screen());
        //                 }
        //
        //               });
        //             },
        //
        //
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Container(
          margin: EdgeInsets.only(bottom: 25, left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white.withOpacity(0.1),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: buildBlur(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              child: Container(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap:(){
                              Get.to(BMI_Screen());

                    },


                            child: Container(


                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  color: Colors.black12,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Icon(Icons.monetization_on,color:Color(0xFF27FF91),),
                                      ),
                                      Text('BMI Calculator'.tr,style: TextStyle(color: Color(0xFF27FF91)),),
                                    ],
                                  ),
                                )),
                          ),
                          RosaButton()
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ),
      ),
      );






  }
  Widget buildBlur({
    @required Widget child,
    BorderRadius borderRadius,
    double sigmaX = 10,
    double sigmaY = 10,
  }) =>
      ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );
}




