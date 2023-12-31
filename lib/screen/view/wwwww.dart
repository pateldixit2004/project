import 'dart:io';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  List<Model> list = [
    Model(name: 'Art Silk',
        price: '500',
        p: '1000',
        link: 'https://rukminim2.flixcart.com/image/832/832/xif0q/sari/m/o/q/free-33-gold-purple-vf-vbhp-fashion-unstitched-original-imagu2nbhrk4j7pw.jpeg?q=70'),
    Model(name: 'Lycra Blend',
        price: '400',
        p: '800',
        link: 'https://rukminim2.flixcart.com/image/832/832/xif0q/shopsy-sari/o/b/g/free-fb-1057-shopsy-saubhagyavati-unstitched-original-imag9sa5mzgq9z7x.jpeg?q=70'),
    Model(name: 'Velvet Saree',
        price: '300',
        p: '600',
        link: 'https://rukminim2.flixcart.com/image/832/832/xif0q/sari/t/f/z/-original-imaguhzmgx9zz3na.jpeg?q=70'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
            slivers: [
              // SliverList(
              //
              //     delegate:
              //         SliverChildBuilderDelegate((context, index) => Container(
              //               height: 100,
              //               width: 100,
              //               color: Colors.blue,
              //               child: Text("sfnj"),
              //             ),childCount: 10,)),
              SliverToBoxAdapter(
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Colors.lightBlue
                  ),
                  // margin: EdgeInsets.all(value),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Model model = Model(
                              name: '${list[index].name}',
                              p: '${list[index].p}',
                              price: '${list[index].price}',
                              link: '${list[index].link}',
                            );
                            Get.to(DetailScreen(), arguments:model);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    height: 200,
                                    child: Image.network(
                                        '${list[index].link}'),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Card(
                                      color: Colors.red,
                                      child: SizedBox(width: 30,
                                          child: Center(child: Text("20",
                                            style: TextStyle(fontSize: 20),))),
                                    ),
                                  ),
                                ],
                              ),
                              Text("${list[index].name}"),
                              Row(

                                children: [
                                  Text("${list[index].p}", style: TextStyle(
                                      decoration: TextDecoration.lineThrough),),
                                  const SizedBox(width: 10,),
                                  Text("${list[index].price}",
                                    style: TextStyle(color: Colors.red),),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 500,
                  // margin: EdgeInsets.all(value),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: 200,
                                  child: Image.network(
                                      'https://rukminim2.flixcart.com/image/832/832/xif0q/sari/m/o/q/free-33-gold-purple-vf-vbhp-fashion-unstitched-original-imagu2nbhrk4j7pw.jpeg?q=70'),
                                ),
                                Card(
                                  child: Text("20"),
                                ),
                              ],
                            ),
                            Text("Price"),
                          ],
                        ),
                      );
                    },
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
