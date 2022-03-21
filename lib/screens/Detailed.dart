import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../../constants.dart';
import '../widgets/tab_list.dart';

class DetailedScreen extends StatelessWidget {
  final RosaTabs rosaTabs;

  const DetailedScreen({ required this.rosaTabs});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(

              margin: const EdgeInsets.only(bottom: kDefaultPadding * 0.5),
              // It will cover 20% of our total height
              height: MediaQuery.of(context).size.height * 0.35,
              child: Stack(
                children: <Widget>[
                  Hero(
                    tag: rosaTabs.image_path,
                    child: Material(
                      child: Container(

                        padding: const EdgeInsets.only(
                          left: kDefaultPadding,
                          right: kDefaultPadding,

                        ),
                        height: MediaQuery.of(context).size.height * 0.30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(rosaTabs.image_path),
                            colorFilter: new ColorFilter.mode(kPrimaryColor.withOpacity(1), BlendMode.dstATop),

                          ),



                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                            bottomRight: Radius.circular(36),
                          ),
                        ),
                        child:

                        Row(

                          children: <Widget>[

                            Text(
                              rosaTabs.heading,

                              style: const TextStyle(
                                fontSize: 24,
                                color: Colors.white,

                                shadows: [
                                  Shadow(
                                    blurRadius: 10.0,
                                    color: Colors.black,
                                    offset: Offset(1.0, 1.0),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 10),
                              blurRadius: 50,
                              color: kPrimaryColor.withOpacity(0.23),
                            ),
                          ],
                        ),
                        child: TabBar(
                            unselectedLabelColor: Colors.black,
                            indicatorSize: TabBarIndicatorSize.label,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black),
                            tabs: [
                              Tab(
                                child: Container(


                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
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
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
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
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
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
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              // height: MediaQuery.of(context).size.height * 0.55,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.62,
                child: TabBarView(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: SingleChildScrollView(
                      child: RichText(
                        // overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          text:
                          rosaTabs.d_text.tr,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20),
                    child: SingleChildScrollView(
                      child: RichText(
                        text: TextSpan(
                          text:
                          rosaTabs.procedure.tr,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black
                          ),

                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20),
                      child: RichText(text: TextSpan(
                        text: rosaTabs.faq.tr,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black
                        ),
                      )),
                    ),
                  ),

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
                              ),Padding(
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
                      )

                  ),

                ]),
              ),
            )
          ],
        ),

      ),

    );

  }
}
