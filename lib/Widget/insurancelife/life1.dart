import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
class Termlife extends StatelessWidget {
  const Termlife({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List life_list = [
      {
        "life_icon": MdiIcons.handClapOff,
        "life_name": "Term Life",
      },
      {
        "life_icon": MdiIcons.musicAccidentalSharp,
        "life_name": "Accident",
      },
      {
        "life_icon": MdiIcons.shieldAccount,
        "life_name": "Guaranteed Returns",
      },

    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return  Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Life and Accident",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              Container(
                  height: height*0.13,
                  padding: const EdgeInsets.only(
                      bottom: 5.0, top: 3.0, right: 5.0, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount:  life_list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height:  height*0.10,
                              width: width*0.22,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(

                                    height:  height*0.06,
                                    width: width*0.37,
                                    alignment: Alignment.topCenter,
                                    child: IconButton(
                                      icon: Icon(
                                          life_list[index]["life_icon"]),
                                      iconSize: 25.sp,
                                      color: Colors.deepPurple,
                                      onPressed: () {},
                                    ),
                                  ),

                                  Text(
                                    life_list[index]["life_name"],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  )),

            ],
          )),
    );
  }
}


