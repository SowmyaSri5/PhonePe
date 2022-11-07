import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../main.dart';
import 'final.dart';

class Splsh extends StatefulWidget {
  const Splsh({Key? key}) : super(key: key);

  @override
  State<Splsh> createState() => _SplshState();
}

class _SplshState extends State<Splsh> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
        const Duration(
          milliseconds: 6000,
        ),
        () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Latest()));
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height / 3.7,
            ),
            Image.asset(
              "assets/images/hell.webp",
              scale: 0.9.sp,
            ),
          ],
        ),
      ),
    );
  }
}

// class Splsh extends StatelessWidget {
//   const Splsh({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
