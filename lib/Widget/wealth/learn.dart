import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Money extends StatelessWidget {
  const Money({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            leading: IconButton(
              icon:  Icon(Icons.collections_bookmark_outlined),
              iconSize: 25.sp,
              color: Colors.deepPurple,
              onPressed: () {},
            ),
            title:  Text("Learn how to grow your money",style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Text("Start your investment journey here",style: TextStyle(
              fontSize: 10.sp,
            ),),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_outlined),
              iconSize: 13.sp,
              //color: Colors.deepPurple,
              onPressed: () {},
            ),
          )

        ],
      ),

    );
  }
}

