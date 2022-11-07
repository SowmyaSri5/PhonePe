import 'package:banking/Widget/history/pay2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';



class Pays extends StatelessWidget {
  const Pays({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print(height);
    print(height * 0.04);
    return Card(
      child: Column(
        children: [
          ListTile(
            leading:

              IconButton(
                icon: Icon(Icons.mobile_friendly_sharp),
                iconSize: 25.sp,
                color: Colors.deepPurple,
                onPressed: () {},
              ),

            title:  Text("Mobile recharged",style: TextStyle(
            fontSize: 13.sp,),),
            subtitle:  Text("9912345875",style: TextStyle(
    fontSize: 12.sp,),),
            trailing:  Text("₹400",style: TextStyle(
    fontSize: 10.sp,
            fontWeight: FontWeight.w500),),
          ),
          Container(
            height: height*0.05,
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                Text("7 days ago",style: TextStyle(
                    fontSize: 10.sp,color: Colors.grey),),
                const Expanded(
                    child: Text("")),
                 Text("Debited from",style: TextStyle(
                  fontSize: 12.sp,
                ),),
                Image.network(
                  "https://png.pngitem.com/pimgs/s/23-238440_axis-bank-png-logo-of-axis-bank-transparent.png",
                  height: height*0.05,
                  width: width*0.05,
                ),
                Divider(
                  height: height*0.1,
                  thickness: 2,
                ),

              ],
            ),

          ),

        ],
      ),
    );
  }
}
