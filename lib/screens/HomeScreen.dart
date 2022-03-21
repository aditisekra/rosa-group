

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/contact_button.dart';
import '../constants.dart';
import '../widgets/tab_list.dart';



class HomeScreen extends StatefulWidget {


 HomeScreen({Key? key}) : super(key: key);



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
      appBar:  AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 5,

        title: const Text("Rosa Groups"),
        actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Transform.scale(
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
        ),

          //IconButton(onPressed: () { buildLanguageDialog(context);}, icon: const Icon(Icons.language)),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding:  const EdgeInsets.all(kDefaultPadding),
              child: Container(

                height: conheight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    RichText(


                      text: TextSpan(
                        text: 'intro1'.tr,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('intro2'.tr, style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black
                      ),),
                    )

                  ],
                ),
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 10, right: 20),
                child: Container(
                    height: (MediaQuery
                        .of(context)
                        .size
                        .height - AppBar().preferredSize.height - conheight) *
                        0.80,
                    child: TabList())
            ),

          ],

        ),
      ),


      floatingActionButton: RosaButton(),


    );

  }

  final List locale =[
    {'name':'ENGLISH','locale': const Locale('en','US')},
    {'name':'FRENCH','locale': const Locale('fr','FR')},
  ];

  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context){
    showDialog(context: context,
        builder: (builder){
          return AlertDialog(
            title: const Text('Choose Your Language'),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(child: Text(locale[index]['name']),onTap: (){
                        print(locale[index]['name']);
                        updateLanguage(locale[index]['locale']);
                      },),
                    );
                  }, separatorBuilder: (context,index){
                return const Divider(
                  color: Colors.blue,
                );
              }, itemCount: locale.length
              ),
            ),
          );
        }
    );
  }
}

