import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Upibank extends StatelessWidget {
  const Upibank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Color.fromARGB(100, 158, 203, 243),
      child: Container(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children:  [
            Text("My UPI ID:sowmya@ybl",style: TextStyle(
              fontSize: 10.sp,
            ),),
            Expanded(child: Text("")),
            Icon(Icons.arrow_forward_ios,size: 8.sp,),
          ],
        ),
      ),
    );
  }
}


