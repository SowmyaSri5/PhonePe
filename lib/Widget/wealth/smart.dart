import 'package:banking/Widget/wealth/rw.dart';
import 'package:banking/Widget/wealth/rw2.dart';
import 'package:banking/Widget/wealth/rw3.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Portfolios extends StatelessWidget {
  const Portfolios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.lightbulb_outline_rounded),
              iconSize: 30.sp,
              color: Colors.deepPurple,
              onPressed: () {},
            ),
            title: Text(
              "Smart Portfolios",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 12.sp),
            ),
            subtitle: Text(
              "Expert managed portfolios of mutual funds. Best suited for long-term wealth creation.",
              style: TextStyle(
                fontSize: 10.sp,
              ),
            ),
          ),
          SizedBox(height: height* 0.02,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                High(),
                Next(),
                Balance(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child:  TextButton(onPressed: (){},
              child: Text("Learn More About Fund Packs >",

                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.deepPurple,
                ),),
            ),

          ),

        ],
      ),
    );
  }
}
