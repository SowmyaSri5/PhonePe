import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


import '../Widget/homepage/appbar.dart';
import '../Widget/insurancelife/adds.dart';
import '../Widget/insurancelife/health.dart';
import '../Widget/insurancelife/life1.dart';
import '../Widget/insurancelife/others.dart';
import '../Widget/insurancelife/vehicle0.dart';
class Thirdbutton extends StatelessWidget {
  const Thirdbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: AppBarNew ()),
      //appBar: AppBar(),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(5.0),
        // physics: const ClampingScrollPhysics(),
        children:const [
          VehicleIns(),
          Termlife(),
          Healthcare(),
          Travel(),
          Adsimg(),


        ],
      ),


     // bottomNavigationBar: const Bottomnavigation(),
    );
  }
}





