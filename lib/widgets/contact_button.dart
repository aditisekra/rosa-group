import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:rosaapp/rosa_icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class RosaButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }


    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'smith@example.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Example Subject & Symbols are allowed!'
      }),
    );
    return SpeedDial(
      icon: Icons.add,
      // label: Text('contact'.tr),
      animatedIconTheme: const IconThemeData(size: 28.0),
      overlayColor: Colors.black38.withOpacity(0.2),
      backgroundColor: Colors.black,
      visible: true,
      curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: const Icon(RosaIcons.globe, color: Colors.white),
          backgroundColor: Colors.black,
          onTap: () => _launchURL('http://rosagroups.com'),

        ),



        SpeedDialChild(
          child: const Icon(RosaIcons.facebook, color: Colors.white),
          backgroundColor: Colors.black,
          onTap: () => {_launchURL('https://www.facebook.com/Rosa-Groups-109492144863536/')}

        ),
        SpeedDialChild(
          child: const Icon(RosaIcons.instagram, color: Colors.white),
          backgroundColor: Colors.black,
          onTap: () => _launchURL('https://www.instagram.com/rosa_groups_llc/'),


        ),
        SpeedDialChild(
            child: const Icon(RosaIcons.whatsapp, color: Colors.white),
            backgroundColor: Colors.black,
            onTap: () => {_launchURL('https://wa.me/message/XLGMG3AP5J42E1')}

        ),
        SpeedDialChild(
            child: const Icon(RosaIcons.mail, color: Colors.white),
            backgroundColor: Colors.black,

            onTap: () => {_launchURL(params.toString())}

        ),
        SpeedDialChild(
            child: const Icon(RosaIcons.call, color: Colors.white),
            backgroundColor: Colors.black,


            onTap: () => {launch("tel://+918556866987")}
        ),
      ],
    );
  }
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'contact@rosagroups.com,boumtche@gmail.com',
    query: 'subject=Hello &body=Write your message here', //add subject and body here
  );

  _launchURL( String  _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }


}
