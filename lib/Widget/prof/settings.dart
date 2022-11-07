import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Setts extends StatelessWidget {
  const Setts({Key? key}) : super(key: key);

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
        Container(
          padding: EdgeInsets.all(10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Payment Settings",
              style:
                  TextStyle(fontWeight: FontWeight.w600,
                      color: Colors.black,
                  fontSize: 12.sp),
            ),
          ),
        ),
        ListTile(
          leading: IconButton(
            icon: Image.asset("assets/images/aaa.png",
              height: height*0.07,width: width*0.07,),
            onPressed: () {},
          ),
          title: Text("UPI Settings", style: TextStyle(
            fontSize: 12.sp,
          ),),
          subtitle: Text(
            "Set default to send & receive money",
            style: TextStyle(
              fontSize: 10.sp,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12.sp,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        Divider(
          height: height*0.01,
          thickness: 0.5,
          color: Colors.grey,
        ),
        ListTile(
          leading: IconButton(
            icon: Image.asset("assets/images/qr.png",
              height: height*0.07,width: width*0.07,
            ),
            onPressed: () {},
          ),
          title: Text("QR codes", style: TextStyle(
            fontSize: 12.sp,
          ),),
          subtitle: Text(
            "View your QR codes",
            style: TextStyle(
              fontSize: 10.sp,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12.sp,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        Divider(
          height: height*0.01,
          thickness: 0.5,
          color: Colors.grey,
        ),
        ListTile(
          leading: IconButton(
            icon: Image.asset("assets/images/au.webp",
              height: height*0.07,width: width*0.07,),
            onPressed: () {},
          ),
          title: Text("Autopay Settings", style: TextStyle(
            fontSize: 12.sp,
          ),),
          subtitle: Text(
            "Manage your Autopay settings",
            style: TextStyle(
              fontSize: 10.sp,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12.sp,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
        Divider(
          height: height*0.01,
          thickness: 0.5,
          color: Colors.grey,
        ),
        ListTile(
          leading: IconButton(
            icon: Image.asset("assets/images/re.png",
              height: height*0.07,width: width*0.07,),
            onPressed: () {},
          ),
          title: Text("Reminders", style: TextStyle(
            fontSize: 12.sp,
          ),),
          subtitle: Text(
            "Never miss another bill payment",
            style: TextStyle(
              fontSize: 10.sp,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12.sp,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        )
      ],
    ));
  }
}
