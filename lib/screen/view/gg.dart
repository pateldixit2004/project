import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screen/model/h_model.dart';
import 'package:project/utiles/firebase_helper.dart';

import '../contoller/h_controller.dart';

class GGScreen extends StatefulWidget {
  const GGScreen({super.key});

  @override
  State<GGScreen> createState() => _GGScreenState();
}

class _GGScreenState extends State<GGScreen> {
  HController controller = Get.put(HController());

  final TextEditingController txtadd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: txtadd,
                                  decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(),
                                      labelText: 'No of Worker'),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    controller
                                        .addContainers(int.parse(txtadd.text));
                                    HModel model =
                                        HModel(no_of_worker: txtadd.text);
                                    FireBaseHelper.base.workerData(model);
                                    Get.back();
                                  },
                                  child: const Text("Add"),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.add)),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/data');
                  },
                  child: const Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}
