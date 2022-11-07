import 'package:flutter/material.dart';


import '../Widget/history/first.dart';
import '../Widget/history/pay1.dart';
import '../Widget/history/pay2.dart';
import '../Widget/history/payments.dart';
import '../Widget/homepage/appbar.dart';
class History  extends StatelessWidget {
  const History ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBarNew ()),

      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(5.0),
        children: [
          Main(),
          Paid(),
          Pays(),
          Amz(),
        ],
      ),
     // bottomNavigationBar: const Bottomnavigation(),
    );
  }
}


