import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Trends extends StatelessWidget {
  const Trends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Last Payment for ₹500, more than 2 months ago",
              style: TextStyle(

                //fontWeight: FontWeight.w400,
                fontSize: 8.sp,
                color: Colors.black54,
              ),
            ),
          ),

          ListTile(
            leading: Card(
              child: Image.asset(
                "assets/images/tri1.jfif",
                height: height * 0.13,
                width: width * 0.13,
              ),
            ),
            title:  Text(
              "Trends",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
            subtitle:  Text("⭐5.0   4km .Closes at 10:00pm",style: TextStyle(
              fontSize: 10.sp,
            ),),
            trailing:  Icon(Icons.arrow_forward_ios,size: 13.sp,color: Colors.black54),
          ),

          // ),
          Container(
            padding: const EdgeInsets.all(5.0),
            width: width * 0.85,
            child: OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              icon: Icon(Icons.arrow_upward,color: Colors.deepPurple,),
              label:  Text(
                "pay now",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
