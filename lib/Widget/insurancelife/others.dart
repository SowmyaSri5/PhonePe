import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Travel extends StatelessWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List tr_list = [
      {
        "tr_icon": Icons.travel_explore,
        "tr_name": "Domestic\n Travel",
      },
      {
        "tr_icon": Icons.flight_rounded,
        "tr_name": "International \n Travel",
      },
      {
        "tr_icon": Icons.local_grocery_store_outlined,
        "tr_name": "Shop",
        "tr_stke": "new",
      },
      {
        "tr_icon": Icons.mobile_friendly,
        "tr_name": "Mobile",
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
                  "Travel And Others",
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: tr_list.length,
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
                                          tr_list[index]["tr_icon"]),
                                      iconSize: 25.sp,
                                      color: Colors.deepPurple,
                                      onPressed: () {},
                                    ),
                                  ),

                                  Text(
                                    tr_list[index]["tr_name"],
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

