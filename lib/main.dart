import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/firebase_options.dart';
import 'package:project/screen/view/data_info_screen.dart';
import 'package:project/screen/view/gg.dart';
import 'package:project/screen/view/h_screen.dart';
import 'package:project/screen/view/log_in_screen.dart';
import 'package:project/screen/view/s.dart';
import 'package:project/screen/view/sing_up_screen.dart';
import 'package:project/screen/view/splesh_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      // '/':(context) => StoryScreen(),
      // '/':(context) => HScreen(),
      '/': (context) => SpleshScreen(),
      '/log': (context) => LogInScreen(),
      '/sign':(p0) => SignUpScreen(),
      '/gg': (context) => GGScreen(),
      '/data': (context) => DataInfoScreen(),
      '/ss': (context) => SScreen(),
    },
  ),);
}
