import 'package:flutter/material.dart';


import '../Widget/homepage/appbar.dart';
import '../Widget/wealth/adimage.dart';
import '../Widget/wealth/explore.dart';
import '../Widget/wealth/funds.dart';
import '../Widget/wealth/idea.dart';
import '../Widget/wealth/learn.dart';
import '../Widget/wealth/smart.dart';
import '../Widget/wealth/w1.dart';

class Wealth extends StatelessWidget {
  const Wealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: AppBarNew()),
      body: ListView(
        shrinkWrap: true,
        // physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(5.0),
        physics: const ClampingScrollPhysics(),
        children: const [
          Createwealth(),
          Investment(),
          Portfolios(),

          Pick(),
          Allfunds(),
          Money(),
         Imi(),



        ],
      ),
      //bottomNavigationBar: const Bottomnavigation(),
    );
  }
}

