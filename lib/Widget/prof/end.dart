import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

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
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/log.png",
                height: height*0.10,width: width*0.10,),
              ),
             SizedBox(width: width*0.01),
           TextButton(onPressed: (){},
               child: Text("LOGOUT",style: TextStyle(
    color: Colors.red,
                 fontSize: 10.sp,
      ),),)

           //   Text("LOGOUT",style: TextStyle(
           // color: Colors.red,
           //  ),),
             // Expanded(child: Text("")),
             //  IconButton(
             //      onPressed: () {},
             //      icon: Text(
             //        "LOGOUT",
             //        style: TextStyle(
             //          color: Colors.red,
             //        ),
             //      )),
            ],
          ),
      ],),

    );
  }
}
