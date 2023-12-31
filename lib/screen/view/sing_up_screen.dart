import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/screen/view/log_in_screen.dart';
import 'package:project/utiles/firebase_helper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtemail=TextEditingController();
  TextEditingController txtpassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:  Column(
        children: [
          buildTextField('Email',false,txtemail),
          buildTextField("Passwoed",true,txtpassword),
          MaterialButton(onPressed: () async {
           String msg= await FireBaseHelper.base.createUser(txtemail.text, txtpassword.text);
           if(msg=='success')
             {
              Get.back();
             }
           Get.snackbar('$msg','',backgroundColor: msg=="success"?Colors.green:Colors.red );

          },child: Text("Sign Up")),
        ],
      ),
    ),
    );
  }
  TextField buildTextField(name,yes,c) {
    return TextField(
      controller: c,
      obscureText: yes,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          hintText: name
      ),
    );
  }
}
