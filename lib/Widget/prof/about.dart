import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class AbtPhnpe extends StatelessWidget {
  const AbtPhnpe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
          children: [
    //   Container(
    //   padding: EdgeInsets.all(10),
    //   child: Align(
    //     alignment: Alignment.topLeft,
    //     child: Text(
    //       "Security",
    //       style:
    //       TextStyle(fontWeight: FontWeight.w600, color: Colors.black,
    //       fontSize: 12.sp),
    //     ),
    //   ),
    // ),
            ListTile(
              leading: IconButton(
                icon: Image.asset("assets/images/phn.jfif",height: height*0.10,width: width*0.10,),
                onPressed: () {},
              ),
              title: Text("About PhonePe",style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),),
              subtitle: Text(
                "Privacy policy, Terms & About PhonePe",
                style: TextStyle(
                  fontSize: 9.sp,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 10.sp,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
    ],),

    );
  }
}
