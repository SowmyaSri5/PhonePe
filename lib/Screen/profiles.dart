import 'package:banking/Widget/prof/settings.dart';
import 'package:flutter/material.dart';


import '../Widget/homepage/appbar.dart';
import '../Widget/prof/about.dart';
import '../Widget/prof/acct.dart';
import '../Widget/prof/appbar.dart';
import '../Widget/prof/end.dart';
import '../Widget/prof/pay.dart';
import '../Widget/prof/pref.dart';
import '../Widget/prof/sec.dart';
class Per extends StatelessWidget {
  const Per({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60.0),
    child: Aps ()),

      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(5.0),
        // physics: const ClampingScrollPhysics(),
        children:  [
          Hello(),
          Payment(),
          Setts(),
          Prefer(),
          Security(),
          AbtPhnpe(),
          Logout(),







        ],
      ),
      //bottomNavigationBar: const Bottomnavigation(),
    );
  }
}
