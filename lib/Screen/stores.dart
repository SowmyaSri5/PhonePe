import 'package:flutter/material.dart';


import '../Widget/homepage/appbar.dart';
import '../Widget/stores/page.dart';

import '../Widget/stores/shop.dart';
import '../Widget/stores/shp2.dart';
import '../Widget/stores/shp3.dart';
import '../Widget/stores/shp4.dart';
class Stores extends StatelessWidget {
  const Stores({Key? key}) : super(key: key);

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
        children: const [
          Sts(),
          Pantloons(),
          Loreal(),
          Trends(),
          Popular(),

        ],
      ),
     // bottomNavigationBar: const Bottomnavigation(),
    );
  }
}


// class Stores extends StatefulWidget {
//   const Stores({Key? key}) : super(key: key);
//
//   @override
//   State<Stores> createState() => _StoresState();
// }
//
// class _StoresState extends State<Stores> {
//
//   @override
//   Widget build(BuildContext context) {

