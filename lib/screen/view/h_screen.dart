import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:project/screen/contoller/h_controller.dart';
import 'package:project/screen/model/h_model.dart';


class HScreen extends StatefulWidget {
  const HScreen({super.key});

  @override
  State<HScreen> createState() => _HScreenState();
}

class _HScreenState extends State<HScreen> {
  HController controller=Get.put(HController());
  final TextEditingController txtDate=TextEditingController();
  final List<List<TextEditingController>> controllersList = List.generate(7, (i) => List.generate(11, (j) => TextEditingController()));
  double total = 0.0;

  void calculateTotal() {
    double sum = 0.0;
    for (var i = 0; i < 7; i++) {
      for (var j = 0; j < 11; j++) {
        sum += double.tryParse(controllersList[i][j].text) ?? 0.0;
      }
    }
    setState(() {
      total = sum;
    });
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Name"),
                  Container(
                    width: 150,
                    decoration: BoxDecoration(color: Colors.white70,border: Border.all()),
                    child: const TextField(
                      decoration: InputDecoration(
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
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text("Date",),
                 Text("Date",),
                 Text("Date",),
                 Text("Date",),
                 Text("Date",),
               ],
             ),
           ),
            // Table(
            //   border: TableBorder.all(width: 1),
            //   children: [
            //     for(int i=0;i<5;i++)
            //       TableRow(
            //         children:[
            //
            //           for(int j= 1;j<6;j++)
            //             TableCell(child: Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: TextField(controller: controllersList[i][j], decoration: InputDecoration(
            //                 labelText: 'Value ${i + 1}-${j + 1}',
            //               ),),
            //             ))
            //         ]
            //       )
            //   ],
            // ),
            Table(
              border: TableBorder.all(width: 1),
              children: [

                TableRow(
                  children: [
                    Text("Date"),
                    Text("Machine 1"),
                    Text("Machine 2"),
                    Text("Machine 3"),
                    Text("Machine 4"),
                    Text("Machine 5"),
                    Text("Machine 6"),
                    Text("Machine 6"),

                  ],
                ),
                for(int j=1;j<=10;j++)
                  TableRow(
                  children: [

                    Text("${controller.k++}"),
                    TextField(
                      controller: controllersList[1][j],
                      keyboardType: TextInputType.number,
                    ),
                    TextField(
                      controller: controllersList[2][j],
                      keyboardType: TextInputType.number,

                    ),
                    TextField(
                      controller: controllersList[3][j],
                      keyboardType: TextInputType.number,

                    ),
                    TextField(
                      controller: controllersList[4][j],
                      keyboardType: TextInputType.number,

                    ),
                    TextField(
                      controller: controllersList[5][j],
                      keyboardType: TextInputType.number,

                    ),
                    TextField(
                      controller: controllersList[6][j],
                      keyboardType: TextInputType.number,

                    ),
                    ElevatedButton(onPressed: () {

                    }, child: Text("To"))
                  ]
                )
              ],
            ),


            ElevatedButton(onPressed: () {
              calculateTotal();
            }, child: Text("Totale")),
            Text("${total}"),
          ],
        ),
      ),
    ),);
  }

  TableRow buildTableRow(i,TextInputType,controller) {
    return TableRow(
                  children: [
                    Center(child: Text("$i",style: const TextStyle(fontWeight: FontWeight.bold),)),
                    TextField(

                      keyboardType: TextInputType,
                    ),
                    TextField(
                      keyboardType: TextInputType,
                    ),
                    TextField(
                      keyboardType: TextInputType,
                    ),
                    TextField(
                      keyboardType: TextInputType,
                    ),
                    TextField(
                      keyboardType: TextInputType,
                    ),
                    TextField(
                      keyboardType: TextInputType,
                    ),
                  ]
              );
  }


}
