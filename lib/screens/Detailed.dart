import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:rosaapp/screens/OnBoard.dart';
import 'package:rosaapp/widgets/bottomSheet.dart';
import 'package:rosaapp/widgets/contact_button.dart';
import '../../constants.dart';
import '../widgets/tab_list.dart';

class DetailedScreen extends StatelessWidget {
  final RosaTabs rosaTabs;
  final PartnerList Partners;

  const DetailedScreen({this.rosaTabs, this.Partners});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(rosaTabs.heading.tr),
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: kDefaultPadding * 0.1),
              height: MediaQuery.of(context).size.height * .10,
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Colors.white,
                        indicatorColor: Color(0xFF27FF91),

                        // indicator: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(50),
                        //     color:Color(0xFF27FF91)),
                        tabs: [
                          Tab(
                            child: Container(
                              width: 60,

                              // decoration: BoxDecoration(
                              //
                              //     borderRadius: BorderRadius.circular(50),
                              //     border: Border.all(
                              //         color: Colors.black, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'about_tab'.tr,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              width: 60,
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(50),
                              //     border: Border.all(
                              //         color: Colors.black, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'procedure_tab'.tr,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              width: 60,
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(50),
                              //     border: Border.all(
                              //         color: Colors.black, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'faq_tab'.tr,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              width: 60,
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(50),
                              //     border: Border.all(
                              //         color: Colors.black, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'partners_tab'.tr,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              width: 70,
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(50),
                              //     border: Border.all(
                              //         color: Colors.black, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'photos_tab'.tr,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.65,
              child: Container(
                color: Colors.black,
                child: TabBarView(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Hero(
                              tag: rosaTabs.image_path,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 18.0),
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(rosaTabs.image_path))),
                                ),
                              )),
                          RichText(
                            // overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: rosaTabs.d_text.tr,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.white70),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: SingleChildScrollView(
                      child: RichText(
                        text: TextSpan(
                          text: rosaTabs.procedure.tr,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: RichText(
                          text: TextSpan(
                        text: rosaTabs.faq.tr,
                        style: const TextStyle(
                            fontSize: 14, color: Colors.white70),
                      )),
                    ),
                  ),
                  Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20, left: 30, right: 30),
                                child: Container(
                                  child: Image.asset(
                                    Partners.img1,
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20, left: 30, right: 30),
                                child: Container(
                                  child: Image.asset(
                                    Partners.img2,
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20, left: 30, right: 30),
                                child: Container(
                                  child: Image.asset(
                                    Partners.img3,
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20, left: 30, right: 30),
                                child: Container(
                                  child: Image.asset(
                                    Partners.img4,
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20, left: 30, right: 30),
                                child: Container(
                                  child: Image.asset(
                                    Partners.img5,
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20, left: 30, right: 30),
                                child: Container(
                                  child: Image.asset(
                                    Partners.img6,
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20, left: 30, right: 30),
                                child: Container(
                                  child: Image.asset(
                                    Partners.img7,
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Image.asset(
                                    Partners.img8,
                                    scale: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(rosaTabs.img1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(rosaTabs.img2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(rosaTabs.img3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(rosaTabs.img4),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(rosaTabs.img5),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(rosaTabs.img6),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(rosaTabs.img7),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset(rosaTabs.img8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ]),
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar:

          //   Container(
          //     height: MediaQuery.of(context).size.height*.1,
          //     width: MediaQuery.of(context).size.width,
          //     child: ElevatedButton(
          //         style: ButtonStyle(
          //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //               RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),
          //
          //               )
          //           ),
          //           backgroundColor: MaterialStateProperty.all(Colors.black),
          //         ),
          //
          //
          //         onPressed: () {
          //           var sheetController = showModalBottomSheet(
          //             isScrollControlled: true,
          //             shape: const RoundedRectangleBorder( // <-- SEE HERE
          //               borderRadius: BorderRadius.vertical(
          //                 top: Radius.circular(40.0),
          //               ),
          //             ),
          //
          //               context: context,
          //               builder: (context) => rosaTabs.heading.tr=='MedHeading'.tr ? BottomSheetClass(): OnBoard());
          //           sheetController.then((value) {});
          //           print(rosaTabs.heading.tr);
          //         },
          //         child: Text('get_price'.tr)),
          //   ),
          // );
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
                              var sheetController = showModalBottomSheet(
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder( // <-- SEE HERE
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(40.0),
                                  ),
                                ),

                                  context: context,
                                  builder: (context) => rosaTabs.heading.tr=='MedHeading'.tr ? BottomSheetClass(): OnBoard());
                              sheetController.then((value) {});
                              print(rosaTabs.heading.tr);},

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
                                    Text("Get Estimated Price",style: TextStyle(color: Color(0xFF27FF91)),),
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
