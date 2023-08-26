import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 5),
          () {
        Get.offAndToNamed("/login_page");
      },
    );
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 700,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/1.png",
              ),
            ),
          ),
        )
      ),
    );
  }
}