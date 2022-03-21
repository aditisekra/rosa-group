import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';


import '../screens/Detailed.dart';




class TabList extends StatelessWidget {

  final List<RosaTabs> rosaTabsList = [
    RosaTabs(image_path:  'assets/images/medic1.jpg',heading: 'MedHeading'.tr,d_text: 'MedText',faq: 'faq',procedure: 'procedure',img1:'assets/images/medic1.jpg',img2:'assets/images/medic2.jpg' ,img3: 'assets/images/medic3.jpg',img4: 'assets/images/medic4.JPG',img5: 'assets/images/medic5.jpg',img6: 'assets/images/medic6.jpg',img7: 'assets/images/medic7.jpg',img8:  'assets/images/medic8.jpg'),
    RosaTabs(image_path:  'assets/images/ca950881-fbcb-4aae-b1b9-aeec3011ecd6.jpg',heading: 'eduservice'.tr,d_text: 'eduabout',faq: 'edufaq',procedure: 'eduprocedure',img1: 'assets/images/stud1.jpg',img2:'assets/images/stud2.jpg' ,img3: 'assets/images/stud3.jpg',img4: 'assets/images/stud4.jpg',img5: 'assets/images/stud5.jpg',img6: 'assets/images/stud6.jpg',img7: 'assets/images/stud7.jpg',img8:  'assets/images/stud8.jpg'),
    RosaTabs(image_path:  'assets/images/general images/20201213_221118-min.jpg',heading: 'genheading'.tr,d_text: 'genabout'.tr,img1: 'assets/images/general images/20201023_171335-min.jpg',img2:'assets/images/general images/20201023_171347-min.jpg' ,img3: 'assets/images/general images/20201104_140542-min.jpg',img4: 'assets/images/general images/20201104_141359-min.jpg',img5: 'assets/images/general images/20201203_233907-min.jpg',img6: 'assets/images/general images/20201209_124106-min.jpg',img7: 'assets/images/general images/20201209_124117-min.jpg',img8:  'assets/images/general images/20201213_221118-min.jpg', procedure: '', faq: ''),
    // RosaTabs(image_path:  'assets/images/become-medical-sales-rep.jpeg',heading: "Medical Services",d_text: 'MedText',faq: 'faq',procedure: 'procedure',)

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: rosaTabsList.length,
      itemBuilder: (context,index){
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailedScreen(rosaTabs: rosaTabsList[index],)),
          ),
          child: Card(
              elevation: 4.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: Hero(
                      tag: rosaTabsList[index].image_path,
                      child: Material(
                        child: Ink.image(
                          image: AssetImage(
                              rosaTabsList[index].image_path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: rosaTabsList[index].heading.tr,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: rosaTabsList[index].d_text.tr,
                            style: const TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        );
      },

    );
  }
}

class RosaTabs  {


  RosaTabs({required this.image_path,required this.heading,required this.d_text,required this.faq,required this.procedure,required this.img1,required this.img2,required this.img3,required this.img4,required this.img5,required this.img6,required this.img7,required this.img8});

  final String image_path;
  final String heading;
  final String d_text;
  final String procedure;
  final String faq;
  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  final String img6;
  final String img7;
  final String img8;

}

