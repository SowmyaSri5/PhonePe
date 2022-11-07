import 'package:banking/Widget/selfacct/acct2.dart';
import 'package:flutter/material.dart';


import '../Widget/selfacct/acct.dart';
import '../Widget/homepage/appbar.dart';
class Acct extends StatelessWidget {
  const Acct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBarNew ()),

      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(5.0),
        // physics: const ClampingScrollPhysics(),
        children: const [
          Bank(),
          Axis2(),







        ],
      ),
     // bottomNavigationBar: const Bottomnavigation(),
    );
  }
}


