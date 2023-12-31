import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screen/view/data_info_screen.dart';
import 'package:project/screen/view/gg.dart';
import 'package:project/screen/view/log_in_screen.dart';
import 'package:project/utiles/firebase_helper.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  bool isLogin=false;
  @override
  void initState() {
    super.initState();
    isLogin=FireBaseHelper.base.chechUser();
  }
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      isLogin==true ?Get.toNamed('/gg'):Get.toNamed('/log');
    });
    return SafeArea(child: Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    ));
  }
}
