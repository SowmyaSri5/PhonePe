import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Amz  extends StatelessWidget {
  const Amz ({Key? key}) : super(key: key);

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
            leading: Card(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: IconButton(
                icon: const Icon(Icons.wordpress_outlined),
                iconSize: 25.sp,
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            title: Text("Paid to",style: TextStyle(
              fontSize: 13.sp,),),
            subtitle:  Text("AMAZON SELLER SERVICES PRIVATE LIMITED",style: TextStyle(
              fontSize: 9.sp,),),
            trailing:  Text("₹100",style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500),),
          ),
          Container(
            height: height*0.07,
            padding: EdgeInsets.all(7),

            child:  Row(
              children: [
                 Text("16 Oct 2022",style: TextStyle(
                    fontSize: 10.sp,color: Colors.grey),),
                const      Expanded(
                    child: Text("")),
                 Text(
                  "Debited from",
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                Image.network(
                  "https://png.pngitem.com/pimgs/s/23-238440_axis-bank-png-logo-of-axis-bank-transparent.png",
                  height: height*0.05,
                  width: width*0.05,
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}

