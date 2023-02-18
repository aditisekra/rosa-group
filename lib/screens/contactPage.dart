import 'package:flutter/material.dart';
import 'package:rosaapp/rosa_icons_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ContactList> contactLists = [
      ContactList(name: 'Marie-Jose BOUMTJE', location: 'Yaounde CAMEROON ', number: '00237699804954'),
      ContactList(name: 'Pierre Celestin NTAMAK', location: 'Yaounde-CAMEROON', number: '00237674913732'),
      ContactList(name: 'Helene MONTHE', location: 'Douala-CAMEROON', number: '0023799381972'),
      ContactList(name: 'Sodja NIKANOR', location: 'CHAD', number: '0023566666667'),
      ContactList(name: 'Emery OUBOTH', location: 'CONGO', number: '00242066888859'),
      ContactList(name: 'Chancelle KAJ NAWEJ', location: 'DR CONGO', number: '00243853330009'),
      ContactList(name: 'Armel DJIENT', location: 'EQUATORIAL GUINEA', number: '00237655790717'),
      ContactList(name: 'Victor MONTHE', location: 'GABON', number: '0024174306969'),
      ContactList(name: 'John BOUMTCHE', location: 'INDIA', number: '00918556866987'),
      ContactList(name: 'Absal DURRANY', location: 'INDIA', number: '00918800706479'),
      ContactList(name: 'Jean MBOK', location: 'USA', number: '0013103476221'),

    ];
    return
      SafeArea(

        child: Scaffold(
          backgroundColor: Colors.black,
        appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 5,

          title: const Text("Rosa Groups"),

        ),
         body: ListView.builder(
        itemCount: contactLists.length,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white60,

                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,


                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(contactLists[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(contactLists[index].location,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 14),),
                        ],
                      ),
                    ),
                    Spacer(),


                    IconButton(onPressed: () => {_launchURL('https://wa.me/${contactLists[index].number}')}, icon:Icon(RosaIcons.whatsapp),color: Colors.black),

                    IconButton(onPressed: () => {launch("tel://${contactLists[index].number}")}, icon:Icon(Icons.call)),


                  ],
                ),
              ),
            ),
          );
        }
    )
    ),);
    }
  }
_launchURL( String  _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class ContactList  {
 ContactList({ this.name, this.location,this.number});
  final String name;
  final String location;
  final String number;
}