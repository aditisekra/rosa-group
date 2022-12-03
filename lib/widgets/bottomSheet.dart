import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rosaapp/screens/OnBoard.dart';

class BottomSheetClass extends StatefulWidget {
  @override
  _BottomSheetClassState createState() => _BottomSheetClassState();
}

class _BottomSheetClassState extends State<BottomSheetClass> {
  List<String> departments = [
    'Oncology',
    'Cardiology',
    'Orthopaedic',
    'Neurosurgery',
    'Cosmetic',
    'Spine Surgery',
    'Transplant'
  ];
  List<String> oncologyTreatment = [
    'Breast Cancer Treatment',
    'Chemotherapy',
    'Prostate Cancer Surgery'
  ];
  List<String> cardiologyTreatment = [
    'Asd Atrial Septal Defect Closure',
    'Mitral Valve Replacement',
    'Heart Bypass Surgery Cabg',
    'Aortic Valve Replacement'
  ];
  List<String> orthopaedicTreatment = [
    'Shoulder Replacement',
    'Total Hip Replacement Thr',
    'Revision Acl Reconstruction Surgery',
    'Knee Replacement'
  ];
  List<String> neurosurgeryTreatment = [
    'Deep Brain Stimulation Surgery',
    'Cyberknife Treatment',
    'Brain Tumor Treatment',
    'Gamma Knife'
  ];
  List<String> cosmeticTreatment = [
    'Rhinoplasty',
    'Tummy Tuck Treatment',
    'Face Lift',
    'Hair Transplant'
  ];
  List<String> spineTreatment = [
    'Lumbar Microdiscectomy',
    'Cervical Decompression',
    'Scoliosis Spine Surgery',
    'Lumbar Decompression'
  ];
  List<String> transplantTreatment = [
    'Autologous Bone Marrow Transplant',
    'Heart Transplant',
    'Liver Transplant',
    'Kidney Transplant'
  ];
  List<String> fertilityTreatment = [
    'Ivf With Donor Eggs',
    'Icsi',
    'Fibroid Removal Surgery',
    'Ivf'
  ];

  List<String> treatments = [];
  List<String> procedures = [];
  String selectedDepartment;
  String selectedTreatment;
  String selectedProcedures;
  String treats = "";

  @override
  Widget build(BuildContext context) {
    return Container(




      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('Estimated Cost'),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40) )

            ),



            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Get Estimated Cost",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white),),

                      IconButton(onPressed:() {
                        Navigator.pop(context);

                      }, icon: Icon(Icons.close),color: Colors.white,)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("These are estimated prices we highly recommend you to schedule a call to get proper details about your medical condition"),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(

              children: [

                // Country Dropdown
                Container(

                  margin: EdgeInsets.only(top: 10,right: 16,bottom: 10),

                  child: DropdownButton<String>(

                    hint: Text('Please Select A Department'),
                    value: selectedDepartment,
                    isExpanded: true,
                    items: departments.map((String value) {
                      return DropdownMenuItem<String>(

                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (department) {
                      switch (department) {
                        case "Oncology":
                          {
                            treatments = oncologyTreatment;
                          }
                          break;

                        case "Cardiology":
                          {
                            treatments = cardiologyTreatment;
                          }
                          break;

                        case "Neurosurgery":
                          {
                            treatments = neurosurgeryTreatment;
                          }
                          break;

                        case "Cosmetic":
                          {
                            treatments = cosmeticTreatment;
                          }
                          break;
                        case "Orthopaedic":
                          {
                            treatments = orthopaedicTreatment;
                          }
                          break;

                        case "Spine Surgery":
                          {
                            treatments = spineTreatment;
                          }
                          break;

                        case "Transplant":
                          {
                            treatments = transplantTreatment;
                          }
                          break;

                        default:
                          {
                            treatments = [];
                          }
                          break;
                      }
                      setState(() {
                        selectedTreatment = null;
                        selectedDepartment = department;
                      });
                    },
                  ),
                ),
                // Country Dropdown Ends here

                // Province Dropdown

                Container(
                  margin: EdgeInsets.only(top: 5,right: 16,bottom: 16),

                  child: DropdownButton<String>(
                    hint: Text('Treatments'),
                    value: selectedTreatment,
                    isExpanded: true,
                    items: treatments.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (treatment) {
                      switch (treatment) {
                        case "Breast Cancer Treatment":
                          {
                            treats = '''• Mastectomy Start from USD 1850 \n
• Breast Cancer-Surgical Start from USD 1850 \n
• Breast Reconstruction with muscle skin flap Start from USD 2780 \n
• Chemotherapy Start from USD 278 \n
• Modified radical mastectomy Start from USD 1700 \n
• Breast Cancer Start from USD 2160\n
• Chemotherapy Start from USD 278 \n
• Modified radical mastectomy Start from USD 1700 \n
• Breast Cancer Start from USD 2160\n
                        ''';
                          }
                          break;

                        case "Chemotherapy":
                          {
                            treats =
                              '''• Chemotherapy Start from USD 278 \n
• Cervical Cancer Treatment Start from USD 2160\n
• Adrenal Cancer Treatment Start from USD 4320 \n
• Pineal Region Tumors Treatment Start from USD 4320 \nn
• Esophagus Cancer Treatment Start from USD 4950''';
                          }
                          break;

                        case "Prostate Cancer Surgery":
                          {
                            treats =
                                '''• Prostate Cancer-Surgical Start from USD 2500 \n
• Chemotherapy Start from USD 278 \n
• Radical Prostatectomy Start from USD 3400 \n
• Prostatectomy Start from USD 2500''';
                          }
                          break;

                        case "Asd Atrial Septal Defect Closure":
                          {
                            treats =
                                '''• ASD (Atrial Septal Defect) Closure Start from USD 2200 \n
• Device Closure- ASD VSD Start from USD 3000''';
                          }
                          break;
                        case "Mitral Valve Replacement":
                          {
                            treats =
                                '''• Mitral Valve Replacement Start from USD 2780\n 
• Valve Replacement Start from USD 3700 \n
• Mitral Valve Repair Start from USD 1250 \n
• Mitral Valve replacement- Tissue Valve Start from USD 4000 \n
• Mitral Valve replacement- Mechanical Valve Start from USD 5370''';
                          }
                          break;

                        case "Heart Bypass Surgery Cabg":
                          {
                            treats =
                                '''• Heart Bypass Surgery (CABG) Start from USD 2800 \n
• Thoracic Aortic Aneurysm Treatment Start from USD 11,100 \n
• Heart Surgery Start from USD 3750 \n
• Heart Bypass- Minimally Invasive CABG Start from USD 2500''';
                          }
                          break;

                        case "Aortic Valve Replacement":
                          {
                            treats =
                                '''Aortic Valve Replacement Start from USD 2500\n
• Aortic Valve Repair Start from USD 2300\n
• Aortic Valve replacement- Tissue Valve Start from USD 3550\n
• Aortic Valve replacement- Mechanical Valve Start from USD 4950\n
• Valve Replacement Start from USD 3700\n
• Bentall procedure Start from USD 4350''';
                          }
                          break;
                        case "Shoulder Replacement":
                          {
                            treats = '''• Repair of dislocations Start from USD 3360 \n
• Shoulder Replacement Surgery Start from USD 2500''';
                          }
                          break;
                        case "Total Hip Replacement Thr":
                          {
                            treats = '''• Total Hip Replacement Start from USD 2700 \n
• Bilateral Hip Replacement Surgery Start from USD 4000 \n
• Revision Hip Replacement Start from USD 5300\n
 • Cementless Total Hip Replacement (THR) Surgery Start from USD 2160 \n
• Cemented Total Hip Replacement Start from USD 3400
''';
                          }
                          break;
                        case "Revision Acl Reconstruction Surgery":
                          {
                            treats = '''•Revision ACL Reconstruction Surgery Start from USD 2500 \n
• ACL Reconstruction Start from USD 870
''';
                          }
                          break;
                        case "Knee Replacement":
                          {
                            treats = '''•Knee Replacement Surgery Start from USD 1600 \n
• Unicondylar Knee Replacement Start from USD 1800 \n
• Knock knee surgery Start from USD 3100 \n
• Knee replacement- Bilateral Start from USD 3850 \n
• Revision Single Knee Replacement Start from USD 3100 \n
• Minimally Invasive Knee Replacement Surgery Start from USD 2500
''';
                          }
                          break;
                        case "Deep Brain Stimulation Surgery":
                          {
                            treats = '''•Deep Brain Stimulation (non-rechargeable) Start from USD 14200 \n
• Deep Brain Stimulation Start from USD 5300''';
                          }
                          break;
                        case "Cyberknife Treatment":
                          {
                            treats = '''• CyberKnife Treatment Start from USD 3800
''';
                          }
                          break;
                        case "Brain Tumor Treatment":
                          {
                            treats = '''• Craniotomy Surgery Start from USD 2800 \n
• Brain Tumor Surgery Start from USD 3100 \n
• PEDIATRIC BRAIN SURGERY Start from USD 4350 \n
• Stereotactic Radio Surgery Start from USD 2500 \n
• Radiotherapy Start from USD 2600 \n

''';
                          }
                          break;
                        case "Gamma Knife":
                          {
                            treats = '''• Gamma Knife for AVM or Brain Tumor Start from USD 4400''';
                          }
                          break;
                        case "Rhinoplasty":
                          {
                            treats = '''
• Rhinoplasty Start from USD 1500 \n
• Septorhinoplasty Start from USD 2200''';
                          }
                          break;
                        case "Tummy Tuck Treatment":
                          {
                            treats = '''• Tummy Tuck Start from USD 1200 \n
• Abdominoplasty Start from USD 1450
''';
                          }
                          break;
                        case "Face Lift":
                          {
                            treats = '''• Facelift Start from USD 925''';
                          }
                          break;
                        case "Hair Transplant":
                          {
                            treats = '''• Hair transplant FUE Start from USD 1150 \n
• Hair Transplantation Start from USD 700
''';
                          }
                          break;
                        case "Lumbar Microdiscectomy":
                          {
                            treats = '''•Endoscopic Micro Discectomy MED Start from USD 1900 \n
• Micro Discectomy Start from USD 2200''';
                          }
                          break;
                        case "Cervical Decompression":
                          {
                            treats = '''• Anterior Cervical Discectomy Start from USD 3700 \n
• Surgical decompression Start from USD 3100 \n
• Anterior cervical discectomy and fusion (ACDF) Start from USD 2500 \n
• Cervical Spine Surgery Start from USD 3700''';
                          }
                          break;
                        case "Scoliosis Spine Surgery":
                          {
                            treats = '''• Scoliosis Spine Surgery Start from USD 5000 \n
• Spinal deformity and scoliosis Start from USD 5800
''';
                          }
                          break;
                        case "Lumbar Decompression":
                          {
                            treats = '''• Surgical decompression Start from USD 3100''';
                          }
                          break;
                        case "Autologous Bone Marrow Transplant":
                          {
                            treats = '''• Autologous Bone Marrow Transplant Start from USD 9900 \n
• Bone Marrow Transplant Start from USD 9900 \n
• Pediatric Bone Marrow Transplant Start from USD 18,550''';
                          }
                          break;
                        case "Heart Transplant":
                          {
                            treats = '''• Heart Transplant Start from USD 27800''';
                          }
                          break;
                        case "Liver Transplant":
                          {
                            treats = '''• Liver Transplant Start from USD 15,500 \n
• Liver Cirrhosis Treatment Start from USD 1850 \n
• Hepatitis B Treatment Start from USD 1300''';
                          }
                          break;
                        case "Kidney Transplant":
                          {
                            treats = '''• Kidney Transplant Start from USD 7550 \n
• Radical Nephrectomy Start from USD 2800''';
                          }
                          break;
                        case "Ivf With Donor Eggs":
                          {
                            treats = '''• IVF with Donor Eggs Start from USD 3300 \n
• ICSI Start from USD 2000 \n
• IVF Start from USD 950''';
                          }
                          break;
                        case "Icsi":
                          {
                            treats = '''• ICSI Start from USD 2000''';
                          }
                          break;
                        case "Fibroid Removal Surgery":
                          {
                            treats = '''• Fibroid Removal Surgery Start from USD 1550 \n
• Uterine Fibroid Embolization (UFE) Start from USD 950''';
                          }
                          break;
                        case "Ivf":
                          {
                            treats = '''• IVF Start from USD 950 \n
• Frozen Embryo Transfer (FET) Start from USD 1000''';
                          }
                          break;


                        default:
                          {
                            treats = "";
                          }
                          break;
                      }
                      setState(() {
                        selectedTreatment = treatment;
                      });
                    },
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(treats, textAlign: TextAlign.start,style: TextStyle(fontSize: 15),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          )
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                      onPressed: (){
                      Get.to(OnBoard());

                  }, child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("SCHEDULE A PHONE CALL",textAlign: TextAlign.left,),
                  )),
                ),
                //Province Dropdown Ends here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
