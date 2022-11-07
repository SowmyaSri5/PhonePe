import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Pantloons  extends StatelessWidget {
  const Pantloons ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Last Paid more than 2 months ago",
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
                  borderRadius: BorderRadius.circular(45)),
              child: Image.asset("assets/images/Pantaloons1.jpg",height: height*0.13,width: width*0.13,),
            ),

            title:  Text(
              "Pantaloons-PVP Mall",
              style: TextStyle(
                fontWeight: FontWeight.w600,

                  fontSize: 12.sp,

              ),
            ),
            subtitle:  Text("⭐4.0   50.3km .Closes at 9:30pm",style: TextStyle(
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
              icon: Icon(Icons.arrow_upward,color: Colors.deepPurple,
              size: 12.sp,),
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

