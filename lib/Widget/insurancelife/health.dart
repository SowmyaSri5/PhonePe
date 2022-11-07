import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Healthcare extends StatelessWidget {
  const Healthcare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List care_list = [
      // {
      //   "care_icon": Icons.healing_outlined,
      //   "care_name": "Health+",
      // },
      {
        "care_icon": Icons.health_and_safety_outlined,
        "care_name": "Health++",
      },
      {
        "care_icon": Icons.masks_outlined,
        "care_name": "COVID-19",
      },
      {
        "care_icon": Icons.shield_moon_outlined,
        "care_name": "Super Top-up",
      },

    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child:  Text(
                  "Health",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              Container(
                  height: height*0.10,
                  padding: const EdgeInsets.only(
                      bottom: 5.0, top: 3.0, right: 5.0, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: care_list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height:  height*0.10,
                              width: width*0.22,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  // color: Colors.deepPurple,
                                  // shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(15)),
                                  Container(
                                    height:  height*0.06,
                                    width: width*0.37,
                                    alignment: Alignment.topCenter,
                                    child: IconButton(
                                      icon: Icon(
                                          care_list[index]["care_icon"]),
                                      iconSize: 25.sp,
                                      color: Colors.deepPurple,
                                      onPressed: () {},
                                    ),
                                  ),

                                  Text(
                                    care_list[index]["care_name"],
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

