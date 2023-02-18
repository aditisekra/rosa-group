import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:rosaapp/widgets/bottomSheet.dart';

import '../widgets/contact_form.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('callback'.tr, style: TextStyle(fontSize: 16),),
          ),

          backgroundColor:Colors.black,


          body: SingleChildScrollView(
            child: Column(
              children: [

                  Container(

                      height: MediaQuery.of(context).size.height*0.35,
                      width: MediaQuery.of(context).size.width*1.0,
                    // decoration:  const BoxDecoration(
                    //   color: Colors.black,
                    //   borderRadius: BorderRadius.vertical(
                    //     bottom: Radius.circular(67)
                    // ),
                    // ),
                    child: FittedBox(
                      child: Image.asset("assets/images/Mobile wireframe-cuate.png"),
                      fit: BoxFit.contain,),
                  ),
                 ContactForm(),


              ],
            ),
          )

    );
  }
}

