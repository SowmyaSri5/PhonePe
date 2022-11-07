import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

class VehicleIns extends StatelessWidget {
  const VehicleIns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List motor_list = [
      {
        "motor_icon": MdiIcons.bike,
        "motor_name": "Bike",
        "motor_highlight": "Popular",
      },
      {
        "motor_icon": MdiIcons.car,
        "motor_name": "Car",
        "motor_highlight": " ",
      },
      {
        "motor_icon": Icons.electric_rickshaw_outlined,
        "motor_name": "Auto",
        "motor_highlight": "New ",
      },
      {
        "motor_icon": MdiIcons.taxi,
        "motor_name": "Taxi",
        "motor_highlight": "New",
      },
    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Color.fromARGB(100, 128, 158, 182),
              child: Column(
                children: [
                  Container(
                    height: height*0.05,
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Vehicle Insurance",
                        style: TextStyle(
                          //fontWeight: FontWeight.w400,
                          //fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(8.0),
                    width: width * 0.85,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Enter Vehicle Number",style: TextStyle(
                          fontSize: 10.sp,
                        ),),
                        FloatingActionButton.extended(
                          onPressed: () {},
                          backgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9))),

                          // icon: Icon(Icons.save),
                          label: Text(
                            "VIEW QUOTES",
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child:  Text(
                "Or Browse By Vehicle Type",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp,
                ),
              ),
            ),
            Container(
                height: height * 0.13,
                padding: const EdgeInsets.only(
                    bottom: 15.0, top: 7.0, right: 5.0, left: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: motor_list.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          AlignmentDirectional alignment;
                          return SizedBox(
                            height: height * 0.13,
                            width: width * 0.22,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Card(
                                //   color: Colors.deepPurple,
                                //   shape: RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.circular(15)),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.37,
                                  alignment: Alignment.topCenter,
                                  child: Stack(
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                            motor_list[index]["motor_icon"]),
                                        iconSize: 25.sp,
                                        color: Colors.deepPurple,
                                        onPressed: () {},
                                      ),
                                      motor_list[index]["motor_highlight"]
                                                  .toString()
                                                  .length >=
                                              2
                                          ? Positioned(
                                        top:0.1,
                                              left: 0.05,

                                        right: 0.06,
                                            // width: 45,
                                             // height: 23,
                                              //width: 55,

                                              child: Card(
                                                color: Colors.red,
                                                child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Text(
                                                      motor_list[index]
                                                          ["motor_highlight"],
                                                      style: TextStyle(
                                                          fontSize: 8.sp,
                                                          color: Colors.white),
                                                    )),
                                              ),
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),

                                Text(
                                  motor_list[index]["motor_name"],
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
        ),
      ),
    );

    // Container(
    //   padding: const EdgeInsets.all(8.0),
    //   child: const Text(
    //     "Or Browse By Vehicle Type",
    //     style: TextStyle(
    //       color: Colors.black87,
    //       fontWeight: FontWeight.w400,
    //     ),
    //   ),
    // ),
    // Container(
    //     height: height * 0.13,
    //     padding: const EdgeInsets.only(
    //         bottom: 15.0, top: 7.0, right: 5.0, left: 5.0),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //       children: [
    //         ListView.builder(
    //             shrinkWrap: true,
    //             physics: const BouncingScrollPhysics(),
    //             itemCount: motor_list.length,
    //             scrollDirection: Axis.horizontal,
    //             itemBuilder: (BuildContext context, int index) {
    //               AlignmentDirectional alignment;
    //               return SizedBox(
    //                 height: height * 0.13,
    //                 width: width * 0.22,
    //                 child: Column(
    //                   // mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     // Card(
    //                     //   color: Colors.deepPurple,
    //                     //   shape: RoundedRectangleBorder(
    //                     //       borderRadius: BorderRadius.circular(15)),
    //                     Container(
    //                       height: height * 0.06,
    //                       width: width * 0.37,
    //                       alignment: Alignment.topCenter,
    //                       child: Stack(
    //                         children: [
    //                           IconButton(
    //                             icon:
    //                                 Icon(motor_list[index]["motor_icon"]),
    //                             iconSize: 35,
    //                             color: Colors.deepPurple,
    //                             onPressed: () {},
    //                           ),
    //                           motor_list[index]["motor_highlight"]
    //                                       .toString()
    //                                       .length >=
    //                                   2
    //                               ? Positioned(
    //                                   child: Card(
    //                                     color: Colors.red,
    //                                     child: Container(
    //                                         padding:
    //                                             const EdgeInsets.all(2.0),
    //                                         child: Text(
    //                                           motor_list[index]
    //                                               ["motor_highlight"],
    //                                           style: const TextStyle(
    //                                               fontSize: 8,
    //                                               color: Colors.white),
    //                                         )),
    //                                   ),
    //                                 )
    //                               : Container()
    //                         ],
    //                       ),
    //                     ),
    //
    //                     Text(
    //                       motor_list[index]["motor_name"],
    //                       textAlign: TextAlign.center,
    //                     ),
    //                   ],
    //                 ),
    //               );
    //             })
    //       ],
    //     )),
    //     ],
    //   )),
    // );
  }
}
