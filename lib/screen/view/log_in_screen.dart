import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/utiles/firebase_helper.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            buildTextField('Email', false, txtemail),
            const SizedBox(
              height: 10,
            ),
            buildTextField("Passwoed", true, txtpassword),
            MaterialButton(
              onPressed: () async {
                String msg = await FireBaseHelper.base
                    .signin(txtemail.text, txtpassword.text);
                if (msg == 'success') {
                  Get.toNamed("/gg");
                }

                Get.snackbar(msg, '',
                    backgroundColor:
                        msg == "success" ? Colors.green : Colors.red);
              },
              color: Colors.green,
              child: const Text("Sign in"),
            ),
            const Spacer(),
            InkWell(
                onTap: () {
                  Get.toNamed("/sign");
                },
                child: const Text("Crete account"))
          ],
        ),
      ),
    );
  }

  TextField buildTextField(name, yes, c) {
    return TextField(
      controller: c,
      obscureText: yes,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          hintText: name),
    );
  }
}
