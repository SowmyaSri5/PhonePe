import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
           //strokeAlign: StrokeAlign.outside,
            color: Colors.black87,
            width: width*0.00,
          ),
        ),
        height: 150,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "Balanced Portfolio",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.sp,
                ),
              ),
              subtitle: Text(
                "by Aditya Birla Sun Life",
                style: TextStyle(
                  fontSize: 10.sp,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                iconSize: 13.sp,
                onPressed: () {},
              ),
            ),
            Divider(
              height: height * 0.0,
              thickness: 0.5,
              color: Colors.grey,
            ),
            // Divider(
            //   thickness: 1,
            //   height: height * 0.1,
            // ),
            IntrinsicHeight(
              child:  Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Returns",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),

                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '9.63%',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text("p.a"),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.00,
                      ),
                      Text("as on 31-08-22"),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    width: 30,
                    thickness: 0.1,
                    indent: 5,

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Risk",
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '54%',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.green,
                                    fontSize: 15.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text("lower"),
                        ],
                      ),
                      Text("Vs Nifty 50 TRI"),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
