import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Pick  extends StatelessWidget {
  const Pick ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.explore),
              iconSize: 25.sp,
              color: Colors.deepPurple,
              onPressed: () {},
            ),
            title:  Text("Explore all funds",style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),),
            subtitle: Text("Pick a fund on your own",style: TextStyle(
              fontSize: 11.sp,
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

