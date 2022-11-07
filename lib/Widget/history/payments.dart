import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Paid extends StatelessWidget {
  const Paid ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
  
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.deepPurple,
              child: IconButton(
                icon: const Icon(Icons.arrow_upward_outlined),
                iconSize: 25.sp,
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            title:  Text("Paid to",style: TextStyle(
              fontSize: 13.sp,),),
            subtitle:  Text("Harshitha Kl",style: TextStyle(
              fontSize: 9.sp,),),
            trailing: Text("₹5,000",style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500),),
          ),
          Container(
            height: height*0.05,
            padding: EdgeInsets.all(7),
            child:   Row(
              children: [
                 Text("2 days ago",style: TextStyle(
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
              ],
            ),
          ),

        ],
      ),
    );


  }
}


