import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../../widgets/contact_button.dart';
import '../widgets/tab_list.dart';



class HomeScreen extends StatefulWidget {


 const HomeScreen({Key key}) : super(key: key);



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _enabled = true;






  @override
  Widget build(BuildContext context) {
    double conheight = MediaQuery
        .of(context)
        .size
        .height * 0.10;
    return Scaffold(
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


              height: conheight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 16.0,left: 16),
                    child: RichText(


                      text: TextSpan(
                        text: 'intro1'.tr,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 16),
                    child: Text('intro2'.tr, style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black
                    ),),
                  )

                ],
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 10, right: 20),
                child: SizedBox(

                    height: (MediaQuery
                        .of(context)
                        .size
                        .height - AppBar().preferredSize.height - conheight) *
                        0.85,
                    child: TabList())
            ),

          ],

        ),
      ),


      floatingActionButton: RosaButton(),


    );

  }
}


