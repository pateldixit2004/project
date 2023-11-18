import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screen/contoller/h_controller.dart';
import 'package:intl/intl.dart';
import 'package:project/screen/model/h_model.dart';
import 'package:project/utiles/firebase_helper.dart';

class DataInfoScreen extends StatefulWidget {
  const DataInfoScreen({super.key});

  @override
  State<DataInfoScreen> createState() => _DataInfoScreenState();
}

class _DataInfoScreenState extends State<DataInfoScreen> {
  HController controller=Get.put(HController());

  final TextEditingController txtadd=TextEditingController();
  final TextEditingController txtname=TextEditingController();

  final TextEditingController txtDate=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        actions: [

        ],
      ),
      body:    StreamBuilder(stream: FireBaseHelper.base.readData(), builder: (context, snapshot) {

          if(snapshot.hasError)
            {
              return Text("${snapshot.error}");
            }
          else if(snapshot.hasData)
            {
              QuerySnapshot querySnapshot=snapshot.data!;
              List<QueryDocumentSnapshot> querySnapsList=querySnapshot.docs;
              List<HModel> l1=[];

              for(var x in querySnapsList)
                {
                  Map m1=x.data() as Map;
                  String worker=m1['no_of_worker'];

                  HModel model=HModel(no_of_worker: worker);
                  l1.add(model);
                }
              return ListView.builder(itemBuilder: (context, index) {
                return Column(
                  children: [

                    Obx(
                          () =>  Column(
                        children: List.generate(controller.containerCount.value, (index) => InkWell(
                          onTap: () {
                            Get.toNamed("/ss");
                          },
                          child: Container(

                              width: double.infinity,
                              color: Colors.green,
                              margin: EdgeInsets.all(10),
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
                                          child: const TextField(
                                            decoration: InputDecoration(
                                                focusedBorder: OutlineInputBorder()
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),

                                ],
                              )

                          ),
                        ),),
                      ),
                    )
                  ],
                );
              },itemCount: l1.length,);
            }
          return CircularProgressIndicator();
        },)

    ),);

  }

  Column buildColumn() {
    return Column(
        children: [

          Obx(
                () =>  Column(
              children: List.generate(controller.containerCount.value, (index) => InkWell(
                onTap: () {
                  Get.toNamed("/ss");
                },
                child: Container(

                  width: double.infinity,
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
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
                              child: const TextField(
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder()
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),

                    ],
                  )

                ),
              ),),
            ),
          )
        ],
      );
  }
}
