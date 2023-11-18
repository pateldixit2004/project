import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HController extends GetxController
 {
   RxInt containerCount = 0.obs;

   void addContainers(int data) {

       containerCount.value =containerCount.value + data;

   }


  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();

  // RxDouble total1 = 0.0.obs;

  void calculateTotal1() {
    double val1 = double.tryParse(c1.text) ?? 0.0;
    double val2 = double.tryParse(c2.text) ?? 0.0;
    double val3 = double.tryParse(c3.text) ?? 0.0;
    double val4 = double.tryParse(c4.text) ?? 0.0;

    total1.value = val1 + val2 + val3 + val4;
    print(total1.value);
  }

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  RxDouble total = 0.0.obs;

  void calculateTotal() {
    double val1 = double.tryParse(controller1.text) ?? 0.0;
    double val2 = double.tryParse(controller2.text) ?? 0.0;
    double val3 = double.tryParse(controller3.text) ?? 0.0;
    double val4 = double.tryParse(controller4.text) ?? 0.0;

    total.value = val1 + val2 + val3 + val4;
    print(total.value);
  }
/*
=
=
=

 */

   final List<TextEditingController> textControllers1 = List.generate(
     31,
         (index) => TextEditingController(),
   );

   RxDouble total1=0.0.obs;
   void calculateTotalList1() {
     double val0 = double.tryParse(textControllers1[0].text) ?? 0.0;
     double val1 = double.tryParse(textControllers1[1].text) ?? 0.0;
     double val2 = double.tryParse(textControllers1[2].text) ?? 0.0;
     double val3 = double.tryParse(textControllers1[3].text) ?? 0.0;
     double val4 = double.tryParse(textControllers1[4].text) ?? 0.0;
     double val5 = double.tryParse(textControllers1[5].text) ?? 0.0;
     double val6 = double.tryParse(textControllers1[6].text) ?? 0.0;
     double val7 = double.tryParse(textControllers1[7].text) ?? 0.0;
     double val8 = double.tryParse(textControllers1[8].text) ?? 0.0;
     double val9 = double.tryParse(textControllers1[9].text) ?? 0.0;
     double val10 = double.tryParse(textControllers1[10].text) ?? 0.0;
     double val11 = double.tryParse(textControllers1[11].text) ?? 0.0;
     double val12= double.tryParse(textControllers1[12].text) ?? 0.0;
     double val13 = double.tryParse(textControllers1[13].text) ?? 0.0;
     double val14 = double.tryParse(textControllers1[14].text) ?? 0.0;
     double val15= double.tryParse(textControllers1[15].text) ?? 0.0;
     double val16= double.tryParse(textControllers1[16].text) ?? 0.0;
     double val17 = double.tryParse(textControllers1[17].text) ?? 0.0;
     double val18 = double.tryParse(textControllers1[18].text) ?? 0.0;
     double val19 = double.tryParse(textControllers1[19].text) ?? 0.0;
     double val20 = double.tryParse(textControllers1[20].text) ?? 0.0;
     double val21= double.tryParse(textControllers1[21].text) ?? 0.0;
     double val22 = double.tryParse(textControllers1[22].text) ?? 0.0;
     double val23 = double.tryParse(textControllers1[23].text) ?? 0.0;
     double val24 = double.tryParse(textControllers1[24].text) ?? 0.0;
     double val25 = double.tryParse(textControllers1[25].text) ?? 0.0;
     double val26 = double.tryParse(textControllers1[26].text) ?? 0.0;
     double val27 = double.tryParse(textControllers1[27].text) ?? 0.0;
     double val28 = double.tryParse(textControllers1[28].text) ?? 0.0;
     double val29 = double.tryParse(textControllers1[29].text) ?? 0.0;
     double val30 = double.tryParse(textControllers1[30].text) ?? 0.0;


     total1.value = val0+val1 + val2 + val3 + val4+val5+val6+val7+val8+val9+val10+val11+val12+val13+val14+val15;
     print(total1.value);
   }



   final List<TextEditingController> textControllers2 = List.generate(
     31,
         (index) => TextEditingController(),
   );

   RxDouble total2=0.0.obs;
   void calculateTotalList2() {
     double val0 = double.tryParse(textControllers2[0].text) ?? 0.0;
     double val1 = double.tryParse(textControllers2[1].text) ?? 0.0;
     double val2 = double.tryParse(textControllers2[2].text) ?? 0.0;
     double val3 = double.tryParse(textControllers2[3].text) ?? 0.0;


     double val4 = double.tryParse(textControllers2[4].text) ?? 0.0;
     double val5 = double.tryParse(textControllers2[5].text) ?? 0.0;
     double val6 = double.tryParse(textControllers2[6].text) ?? 0.0;
     double val7 = double.tryParse(textControllers2[7].text) ?? 0.0;
     double val8 = double.tryParse(textControllers2[8].text) ?? 0.0;
     double val9 = double.tryParse(textControllers2[9].text) ?? 0.0;
     double val10 = double.tryParse(textControllers2[10].text) ?? 0.0;
     double val11 = double.tryParse(textControllers2[11].text) ?? 0.0;
     double val12= double.tryParse(textControllers2[12].text) ?? 0.0;
     double val13 = double.tryParse(textControllers2[13].text) ?? 0.0;
     double val14 = double.tryParse(textControllers2[14].text) ?? 0.0;
     double val15= double.tryParse(textControllers2[15].text) ?? 0.0;
     double val16= double.tryParse(textControllers2[16].text) ?? 0.0;
     double val17 = double.tryParse(textControllers2[17].text) ?? 0.0;
     double val18 = double.tryParse(textControllers2[18].text) ?? 0.0;
     double val19 = double.tryParse(textControllers2[19].text) ?? 0.0;
     double val20 = double.tryParse(textControllers2[20].text) ?? 0.0;
     double val21= double.tryParse(textControllers2[21].text) ?? 0.0;
     double val22 = double.tryParse(textControllers2[22].text) ?? 0.0;
     double val23 = double.tryParse(textControllers2[23].text) ?? 0.0;
     double val24 = double.tryParse(textControllers2[24].text) ?? 0.0;
     double val25 = double.tryParse(textControllers2[25].text) ?? 0.0;
     double val26 = double.tryParse(textControllers2[26].text) ?? 0.0;
     double val27 = double.tryParse(textControllers2[27].text) ?? 0.0;
     double val28 = double.tryParse(textControllers2[28].text) ?? 0.0;
     double val29 = double.tryParse(textControllers2[29].text) ?? 0.0;
     double val30 = double.tryParse(textControllers2[30].text) ?? 0.0;


     total2.value = val0+val1 + val2 + val3 + val4+val5+val6+val7+val8+val9+val10+val11+val12+val13+val14+val15;



     print(total2.value);
   }




   final List<TextEditingController> textControllers3 = List.generate(
     30,
         (index) => TextEditingController(),
   );

  RxDouble total3=0.0.obs;
   void calculateTotalList() {
     double val1 = double.tryParse(textControllers3[0].text) ?? 0.0;
     double val2 = double.tryParse(textControllers3[1].text) ?? 0.0;
     double val3 = double.tryParse(textControllers3[2].text) ?? 0.0;
     double val4 = double.tryParse(textControllers3[3].text) ?? 0.0;

     total3.value = val1 + val2 + val3 + val4;
     print(total3.value);
   }
  int k = 1;

}
