import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Loreal  extends StatelessWidget {
  const Loreal ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),

      child: Column(
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Image.asset("assets/images/loreal1.jpg",height: height*0.13,width: width*0.13,),
            ),
            title:  Text(
              "Loreal Saloon",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
            subtitle:  Text("⭐4.5   5.3km .Closes at 9:00pm",
              style: TextStyle(
                fontSize: 10.sp,
              ),),
            trailing:  Icon(Icons.arrow_forward_ios,size: 13.sp,color: Colors.black54),
          ),
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
              label: Text(
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

