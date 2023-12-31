import 'package:b_m_i/image_edit/model/edio_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List size = ['M', "L", 'XL', "XXL"];
  List color = ['black', 'blue', 'grey'];
  String? siz;
  String? col;
  Model? model;

  @override
  void initState() {
    model = Get.arguments;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 500,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(),
                        child: Image.network("${model!.link}"),
                      );
                    },
                    itemCount: 1,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: DropdownButton(
                        items: size
                            .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                          onTap: () {
                            siz = e;
                            setState(() {});
                          },
                        ))
                            .toList(),
                        value: siz,
                        isExpanded: true,
                        onChanged: (value) {
                          siz = value as String;
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: DropdownButton(
                        items: color
                            .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                          onTap: () {},
                        ))
                            .toList(),
                        value: col,
                        isExpanded: true,
                        onChanged: (value) {
                          col = value as String;
                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
