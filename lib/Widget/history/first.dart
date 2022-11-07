import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  // List b=[]
  List b = [
    "Month",
    "Oct-2022",
    "Sep-2022",
    "Aug-2022",
    "Jul-2022",
    "Jun-2022",
    "May-2022",
    "Apr-2022",
    "Mar-2022"
  ];
  String name = "Month";
  List c=["Categories","Merchant Payments","Merchant Refunds","Money Received","Recharge & Bill Payments","Self Transfer","Money Sent"];
  String names="Categories";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),

                child: DropdownButton(

                    value: name,
                    items: b.map((e) {
                      return DropdownMenuItem(value: e, child: Container(
                        padding: const EdgeInsets.all(15),
                          child:
                          Text(e, textAlign: TextAlign.center,style: TextStyle(
                            fontSize: 10.sp,)),
                      ),

                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        name = value.toString();
                      });
                    })),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: DropdownButton(
                    value: names,
                    items: c.map((e) {
                      return DropdownMenuItem(value: e, child: Container(
                      padding: const EdgeInsets.all(15),
                      child:
                      Text(e,style:  TextStyle(
                        fontSize: 10.sp,
                      ),
                      ),));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        name = value.toString();
                      });
                    })),
          ],
        ),
      ],
    );
  }
}
