import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Booking  extends StatelessWidget {
  const Booking ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List booking_list = [
      {
        "booking_icon": Icons.flight_rounded,
        "booking_name": "Flight",
      },
      {
        "booking_icon": Icons.train_outlined,
        "booking_name": "Train",
      },
      {
        "booking_icon": Icons.bus_alert_rounded,
        "booking_name": "Bus",
      },
      {
        "booking_icon": Icons.hotel_outlined,
        "booking_name": "Hotels",
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
                child: Text(
                  "Travel Bookings",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              Container(
                  height: height*0.12,
                  padding: const EdgeInsets.only(
                      bottom: 5.0, top: 3.0, right: 5.0, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: booking_list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: height*0.12,
                              width: width*0.22,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    // color: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Container(
                                      height: height*0.06,
                                      width: width*0.13,
                                      alignment: Alignment.topCenter,
                                      child: IconButton(
                                        icon: Icon(
                                            booking_list[index]["booking_icon"]),
                                        iconSize: 25.sp,
                                        color: Colors.deepPurple,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                  Text(
                                    booking_list[index]["booking_name"],
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



