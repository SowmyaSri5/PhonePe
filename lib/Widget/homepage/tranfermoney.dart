import 'package:banking/Widget/homepage/upiid.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../Screen/selfacct.dart';
import '../selfacct/acct.dart';
class TransferMoney  extends StatelessWidget {
  const TransferMoney ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List transfer_money = [
      {
        "transfer_icon": Icons.account_box,
        "transfer_name": "To Mobile \n Number",
      },
      {
        "transfer_icon": Icons.home_outlined,
        "transfer_name": "To Bank/ \n UPI ID",
      },
      {
        "transfer_icon": Icons.av_timer_outlined,
        "transfer_name": "To Self \n Account",
      },
      {
        "transfer_icon": Icons.account_balance,
        "transfer_name": "Check \nBank Balance",
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
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Transfer Money",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              Container(
                  height: height * 0.14,
                  padding: const EdgeInsets.only(
                      bottom: 15.0, top: 7.0, right: 5.0, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: transfer_money.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: height * 0.14,
                              width: width * 0.22,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Card(
                                    color: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Container(
                                      height: height * 0.06,
                                      width: width * 0.13,
                                      alignment: Alignment.topCenter,
                                      child: IconButton(
                                        icon: Icon(
                                            transfer_money[index]["transfer_icon"]),
                                        iconSize: 25.sp,
                                        color: Colors.white,
                                        onPressed: () {
                                          if (index == 2
                                          ) {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Acct()));
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    transfer_money[index]["transfer_name"],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                    // style: TextStyle(
                                    //   font,
                                    // ),
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  )),
              const Upibank(),
            ],
          )),
    );
  }
}


