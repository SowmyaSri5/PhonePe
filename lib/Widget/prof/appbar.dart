import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Aps extends StatefulWidget {
  const Aps({Key? key}) : super(key: key);

  @override
  State<Aps> createState() => _ApsState();
}

class _ApsState extends State<Aps> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Profile"),
      leading: IconButton(
      icon: const Icon(Icons.arrow_back),
    iconSize: 20.sp,
    color: Colors.white, onPressed: () {
        Navigator.pop(context);
      },
      ),
      actions: [
        IconButton(onPressed: (){},
            icon: Icon(Icons.question_mark_rounded) ,
        )
      ],
      backgroundColor: Colors.deepPurple,

    );
  }
}
