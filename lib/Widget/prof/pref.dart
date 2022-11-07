import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Prefer extends StatelessWidget {
  const Prefer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Settings & Preferences",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.black,
                    fontSize: 12.sp),
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Image.asset("assets/images/lan.png",
              height: height*0.07,width: width*0.07,),
              onPressed: () {},
            ),
            title: Text("Languages",style: TextStyle(
              fontSize: 12.sp,

            ),),
            subtitle: Text(
              "Chosen Language: English",
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
              icon: Image.asset("assets/images/bil.png",
                height: height*0.07,width: width*0.07,),
              onPressed: () {},
            ),
            title: Text("Bill Notifications",
              style: TextStyle(
                fontSize: 12.sp,
              ),),
            subtitle: Text(
              "Receive alerts when bill is generated",
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
              icon: Image.asset("assets/images/per.png",
                height: height*0.07,width: width*0.07,),
              onPressed: () {},
            ),
            title: Text("Permissions",
                style: TextStyle(
                fontSize: 12.sp,
                ),),
            subtitle: Text(
              "Manage data sharing settings",
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
              icon: Image.asset("assets/images/dark.png",
                height: height*0.07,width: width*0.07,),
              onPressed: () {},
            ),
            title: Text("Theme",style: TextStyle(
              fontSize: 12.sp,
            ),),
            subtitle: Text(
              "Choose between light and dark mode",
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
        ],
      ),
    );
  }
}
