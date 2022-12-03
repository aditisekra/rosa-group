import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:rosaapp/screens/OnBoard.dart';
import 'package:rosaapp/widgets/bottomSheet.dart';
import '../../constants.dart';
import '../widgets/tab_list.dart';

class DetailedScreen extends StatelessWidget {
  final RosaTabs rosaTabs;
  final PartnerList Partners;

  const DetailedScreen({this.rosaTabs, this.Partners});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: MediaQuery.of(context).size.height*.10,
              child: Stack(
                children: <Widget>[

                  Container(
                    alignment: Alignment.center,

                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,

                    ),
                    child: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Colors.black.withOpacity(0.6),
                        indicatorColor: Colors.black,
                        labelColor: Colors.black,
                        // indicator: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(50),
                        //     color: Colors.black),
                        tabs: [
                          Tab(
                            child: Container(
                              width: 60,

                              // decoration: BoxDecoration(
                              //
                              //     borderRadius: BorderRadius.circular(50),
                              //     border: Border.all(
                              //         color: Colors.black, width: 1)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    "About",
                                    style: TextStyle(fontSize: 12),
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
                              child: const Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    "Procedure",
                                    style: TextStyle(fontSize: 13),
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
                              child: const Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    "FAQ",
                                    style: TextStyle(fontSize: 13),
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
                              child: const Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    "Partners",
                                    style: TextStyle(fontSize: 13),
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
                              child: const Align(
                                alignment: Alignment.center,
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: Text(
                                    "Photos",
                                    style: TextStyle(fontSize: 13),
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
              height: MediaQuery.of(context).size.height * 0.67,
              child: Container(
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
                                      image: AssetImage(rosaTabs.image_path)
                                    )
                                  ),
                                    ),
                              )),
                          RichText(
                            // overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: rosaTabs.d_text.tr,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
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
                              fontSize: 14, color: Colors.black),
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
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      )),
                    ),
                  ),
                  Container(
                      color: Colors.white,
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

      bottomNavigationBar:

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
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),


            onPressed: () {
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
              print(rosaTabs.heading.tr);
            },
            child: Text("Get Estimated Price")),
      ),
    );
  }
}
