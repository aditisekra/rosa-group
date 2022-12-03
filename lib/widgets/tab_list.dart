import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import '../screens/Detailed.dart';




class TabList extends StatelessWidget {

  final List<RosaTabs> rosaTabsList = [
    RosaTabs(image_path:  'assets/images/general images/medical1.jpeg',heading: 'MedHeading'.tr,d_text: 'MedText',faq: 'faq',procedure: 'procedure',img1:'assets/images/medic1.jpg',img2:'assets/images/medic2.jpg' ,img3: 'assets/images/medic3.jpg',img4: 'assets/images/medic4.JPG',img5: 'assets/images/medic5.jpg',img6: 'assets/images/medic6.jpg',img7: 'assets/images/medic7.jpg',img8:  'assets/images/medic8.jpg',img9: 'assets/images/volodymyr-hryshchenko-e8YFkjN2CzY-unsplash.jpg'),
    RosaTabs(image_path:  'assets/images/general images/education1.jpeg',heading: 'eduservice'.tr,d_text: 'eduabout',faq: 'edufaq',procedure: 'eduprocedure',img1: 'assets/images/stud1.jpg',img2:'assets/images/stud2.jpg' ,img3: 'assets/images/stud3.jpg',img4: 'assets/images/stud4.jpg',img5: 'assets/images/stud5.jpg',img6: 'assets/images/stud6.jpg',img7: 'assets/images/stud7.jpg',img8:  'assets/images/stud8.jpg',img9: 'assets/images/joanna-kosinska-bF2vsubyHcQ-unsplash.jpg'),
    RosaTabs(image_path:  'assets/images/general images/services1.jpeg',heading: 'genheading'.tr,d_text: 'genabout'.tr,img1: 'assets/images/general images/20201023_171335-min.jpg',img2:'assets/images/general images/20201023_171347-min.jpg' ,img3: 'assets/images/general images/20201104_140542-min.jpg',img4: 'assets/images/general images/20201104_141359-min.jpg',img5: 'assets/images/general images/20201203_233907-min.jpg',img6: 'assets/images/general images/20201209_124106-min.jpg',img7: 'assets/images/general images/20201209_124117-min.jpg',img8:  'assets/images/general images/20201213_221118-min.jpg', procedure: 'genprocedure', faq: 'genfaq',img9: 'assets/images/volodymyr-hryshchenko-NQQ_WKbjMZ0-unsplash.jpg'),
    // RosaTabs(image_path:  'assets/images/become-medical-sales-rep.jpeg',heading: "Medical Services",d_text: 'MedText',faq: 'faq',procedure: 'procedure',)

  ];
  final List<PartnerList> partnerTabList = [
    PartnerList(img1:'assets/images/partners/hospitals/aiims.jpeg',img2:'assets/images/partners/hospitals/apollo.png' ,img3: 'assets/images/partners/hospitals/artemis.png',img4: 'assets/images/partners/hospitals/blk.jpeg',img5: 'assets/images/partners/hospitals/fortis.png',img6: 'assets/images/partners/hospitals/indian_spinal.jpeg',img7: 'assets/images/partners/hospitals/jaypee.png',img8:  'assets/images/partners/hospitals/max.png',img9: 'assets/images/partners/hospitals/paras.png'),
    PartnerList(img1: 'assets/images/partners/schools/aiims.jpeg',img2:'assets/images/partners/schools/amity.png' ,img3: 'assets/images/partners/schools/DU.jpeg',img4: 'assets/images/partners/schools/galgothias.jpeg',img5: 'assets/images/partners/schools/LPU.png',img6: 'assets/images/partners/schools/manga.png',img7: 'assets/images/partners/schools/NIU.png',img8:  'assets/images/partners/schools/quest.jpeg',img9: 'assets/images/partners/schools/sharda.png'),
    PartnerList(img1: 'assets/images/partners/services/delhi_airport.png',img2:'assets/images/partners/services/ministry of commerce.png' ,img3:'assets/images/BLANK_ICON.png' , img4: 'assets/images/BLANK_ICON.png',img5: 'assets/images/BLANK_ICON.png',img6:'assets/images/BLANK_ICON.png',img7: 'assets/images/BLANK_ICON.png',img8: 'assets/images/BLANK_ICON.png',img9: 'assets/images/BLANK_ICON.png')];




  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,

      itemCount: rosaTabsList.length,
      itemBuilder: (context,index) {
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailedScreen(rosaTabs: rosaTabsList[index], Partners: partnerTabList[index],)),
          ),
          child: SizedBox(

            width: MediaQuery.of(context).size.width*0.85,

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
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                            child: RichText(
                              text: TextSpan(
                                text: rosaTabsList[index].heading.tr,
                                style: const TextStyle(
                                  fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.29,
                            child: RichText(
                              text: TextSpan(
                                text: rosaTabsList[index].d_text.tr,
                                style: const TextStyle(
                                  color: Colors.black38,
                                ),
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        );
      },

    );
  }
}

class RosaTabs  {


  RosaTabs({this.image_path, this.heading,this.d_text,this.faq,this.procedure,this.img1,this.img2,this.img3, this.img4, this.img5, this.img6, this.img7, this.img8, this.img9});

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
  final String img9;

}
class PartnerList  {


  PartnerList({this.img1,this.img2,this.img3,this.img4,this.img5, this.img6,this.img7,this.img8,this.img9}) {

  }

  final String img1;
  final String img2;
  final String img3;
  final String img4;
  final String img5;
  final String img6;
  final String img7;
  final String img8;
  final String img9;

}
