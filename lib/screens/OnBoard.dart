import 'package:flutter/material.dart';
import 'package:rosaapp/widgets/bottomSheet.dart';

import '../widgets/contact_form.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Schedule A Call Back"),
          ),

          backgroundColor:Colors.white,


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
      ),
    );
  }
}

