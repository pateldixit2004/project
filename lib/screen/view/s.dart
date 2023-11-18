import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/screen/contoller/h_controller.dart';
import 'package:intl/intl.dart';
import 'package:project/screen/model/h_model.dart';
import 'package:project/utiles/firebase_helper.dart';
class SScreen extends StatefulWidget {
  const SScreen({super.key});

  @override
  State<SScreen> createState() => _SScreenState();
}

class _SScreenState extends State<SScreen> {

  HController controller=Get.put(HController());
  FirebaseFirestore firestore = FirebaseFirestore.instance;


  final TextEditingController txtDate=TextEditingController();


  final TextEditingController txtTotal=TextEditingController();
  final TextEditingController txtname=TextEditingController();
  final TextEditingController txtsacho=TextEditingController();


  // void insertData()
  // {
  //   firestore.collection("name").doc('name').collection("name_w").add({'na':txtname.text});
  //   print("hyy");
  // }

  double total=0.0;
  double total1=0.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Name"),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(color: Colors.white70,border: Border.all()),
                    child:  TextField(
                      controller: txtname,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder()
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Sacha No"),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(color: Colors.white70,border: Border.all()),
                    child:  TextField(
                      controller: txtsacho,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder()
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Date No"),
                  // Container(
                  //   width: 150,
                  //   decoration: BoxDecoration(color: Colors.white70,border: Border.all()),
                  //   child: const TextField(
                  //
                  //     decoration: InputDecoration(
                  //         focusedBorder: OutlineInputBorder()
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(color: Colors.white70,border: Border.all()),
                    child: TextField(
                      controller: txtDate,
                      style: const TextStyle(fontSize: 12),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.calendar_month,
                          size: 20,
                        ),
                      ),
                      readOnly: true,
                      onTap: () async {


                        DateTime? picker = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050));

                        if (picker != null) {
                          txtDate.text =
                              DateFormat("dd-MM-yyyy").format(picker);

                        } else {
                          print("noooo");
                        }
                      },
                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder.all(width: 1),
                children: [
                  const TableRow(
                    children:[
                      Center(child: Text("Date")),
                      Center(child: Text("M-1")),
                      Center(child: Text("M-2")),
                      Center(child: Text("M-3")),
                      Center(child: Text("M-4")),
                    ]
                  ),
                  // buildTableRow(1,controller.c1,controller.controller1,controller.textControllers3[0]),
                  // buildTableRow(2,controller.c2,controller.controller2,controller.textControllers3[1]),
                  // buildTableRow(3,controller.c3,controller.controller3,controller.textControllers3[2]),
                  // buildTableRow(4,controller.c4,controller.controller4,controller.textControllers3[3]),

                 //
                 buildTableRow(1,controller.textControllers1[0],controller.textControllers2[0],controller.textControllers3[0]),
                 buildTableRow(2,controller.textControllers1[1],controller.textControllers2[1],controller.textControllers3[1]),
                 buildTableRow(3,controller.textControllers1[2],controller.textControllers2[2],controller.textControllers3[2]),
                 buildTableRow(4,controller.textControllers1[3],controller.textControllers2[3],controller.textControllers3[3]),


                  buildTableRow(5,controller.textControllers1[4],controller.textControllers2[4],controller.textControllers3[4]),
                  buildTableRow(6,controller.textControllers1[5],controller.textControllers2[5],controller.textControllers3[5]),
                  buildTableRow(7,controller.textControllers1[6],controller.textControllers2[6],controller.textControllers3[6]),
                  buildTableRow(8,controller.textControllers1[7],controller.textControllers2[7],controller.textControllers3[7]),
                  buildTableRow(9,controller.textControllers1[8],controller.textControllers2[8],controller.textControllers3[8]),
                  buildTableRow(10,controller.textControllers1[9],controller.textControllers2[9],controller.textControllers3[9]),
                  buildTableRow(11,controller.textControllers1[10],controller.textControllers2[10],controller.textControllers3[10]),
                  buildTableRow(12,controller.textControllers1[11],controller.textControllers2[11],controller.textControllers3[11]),
                  buildTableRow(13,controller.textControllers1[12],controller.textControllers2[12],controller.textControllers3[12]),
                  buildTableRow(14,controller.textControllers1[13],controller.textControllers2[13],controller.textControllers3[13]),
                  buildTableRow(15,controller.textControllers1[14],controller.textControllers2[14],controller.textControllers3[14]),
                  TableRow(
                      children:[
                        const Center(child: Text("Total")),

                        InkWell(onTap: () {
                          controller.calculateTotalList1();




                        },child: Obx(() =>  Text("${controller.total1.value}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),),



                        // InkWell(onTap: () {
                        //
                        //  controller.calculateTotal();
                        //
                        //  print("fk");
                        // },child: Obx(() =>  Text("${controller.total.value}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),),
                           InkWell(onTap: () {

                         controller.calculateTotalList2();

                         print("fk");
                        },child: Obx(() =>  Text("${controller.total2.value}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),),
                          InkWell(onTap: () {

                         controller.calculateTotalList();


                        },child: Obx(() =>  Text("${controller.total3.value}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),),
                        // TextField(),



                        TextField(),

                        // Text("Date"),
                      ]
                  ),
                ],
              ),

            ),

            ElevatedButton(onPressed: () {
              List list=[
                // controller.c1.text,
                // controller.c2.text,
                // controller.c3.text,
                // controller.c4.text,
                //
                // controller.controller1.text,
                // controller.controller2.text,
                // controller.controller3.text,
                // controller.controller4.text,
                // controller.total.value,

                controller.textControllers1[0].text,
                controller.textControllers1[1].text,
                controller.textControllers1[2].text,
                controller.textControllers1[3].text,
                controller.textControllers1[4].text,
                controller.textControllers1[5].text,
                controller.textControllers1[6].text,
                controller.textControllers1[7].text,
                controller.textControllers1[8].text,
                controller.textControllers1[9].text,
                controller.textControllers1[10].text,
                controller.textControllers1[11].text,
                controller.textControllers1[12].text,
                controller.textControllers1[13].text,
                controller.textControllers1[14].text,


                controller.textControllers2[0].text,
                controller.textControllers2[1].text,
                controller.textControllers2[2].text,
                controller.textControllers2[3].text,
                controller.textControllers2[4].text,
                controller.textControllers2[5].text,
                controller.textControllers2[6].text,
                controller.textControllers2[7].text,
                controller.textControllers2[8].text,
                controller.textControllers2[9].text,
                controller.textControllers2[10].text,
                controller.textControllers2[11].text,
                controller.textControllers2[12].text,
                controller.textControllers2[13].text,
                controller.textControllers2[14].text,
              ];
              double s1=controller.total1.value;
              HModel model=HModel(name: txtname.text,sacho: txtsacho.text,date: txtDate.text,meter:list ,total:s1 );
              FireBaseHelper.base.insertData(model);
            }, child: Text("add")),
          ],
        ),
      ),
    ),);
  }

 
  TableRow buildTableRow(i,c1,c2,c3) {
    return TableRow(
                children: [
                  Center(child: Text("$i")),
                  Center(
                    child: TextField(
                      controller: c1,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Center(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: c2,
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: c3,
                  ),
                  TextField(

                  ),

                ]
              );
  }
}
