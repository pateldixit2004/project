import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/firebase_options.dart';
import 'package:project/screen/view/data_info_screen.dart';
import 'package:project/screen/view/gg.dart';
import 'package:project/screen/view/h_screen.dart';
import 'package:project/screen/view/s.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      // '/':(context) => StoryScreen(),
      // '/':(context) => HScreen(),
      '/': (context) => GGScreen(),
      '/data': (context) => DataInfoScreen(),
      '/ss': (context) => SScreen(),
    },
  ));
}
