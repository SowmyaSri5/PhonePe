import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool switch1 = true;
  String switch2 = "switchon";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return

// class Security extends StatelessWidget {
//   const Security({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
        Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Security",
                style:
                    TextStyle(fontWeight: FontWeight.w600,
                        color: Colors.black,
                    fontSize: 12.sp),
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Image.asset("assets/images/fig.png",
                height: height*0.07,width: width*0.07,),
              onPressed: () {},
            ),
            title: Text("Screen Lock",style: TextStyle(
              fontSize: 12.sp,
            ),),
            subtitle: Text(
              "Biometric & Screen locks",
              style: TextStyle(
                fontSize: 10.sp,
              ),
            ),
            trailing: Switch(
              activeColor: Colors.deepPurple,
              value: switch1,
              onChanged: (value) {
                if (switch1 == false) {
                  setState(() {
                    switch1 = true;
                    switch2 = "switch on";
                  });
                } else {
                  setState(() {
                    switch1 = false;
                    switch2 = "switch off";
                  });
                }
              },
            ),
          ),
          Divider(
            height: height*0.01,
            thickness: 0.5,
            color: Colors.grey,
          ),
          ListTile(
            leading: IconButton(
              icon: Image.asset("assets/images/pass.png",
                height: height*0.07,width: width*0.07,),
              onPressed: () {},
            ),
            title: Text("Change password",style: TextStyle(
              fontSize: 12.sp,
            ),),
            subtitle: Text(
              "Reset your app password",
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
              icon: Image.asset("assets/images/cont1.png",
                height: height*0.07,width: width*0.07,),
              onPressed: () {},
            ),
            title: Text("Blocked Contacts",style: TextStyle(
              fontSize: 12.sp,
            ),),

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
