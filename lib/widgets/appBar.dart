import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class BuildAppBar extends StatefulWidget {
  const BuildAppBar({Key key}) : super(key: key);

  @override
  _BuildAppBarState createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  @override
  Widget build(BuildContext context) {
    bool _enabled = true;
    return AppBar(
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
    );
  }
}
