import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Sts extends StatelessWidget {
  const Sts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 1,
        ),
        //Icon(Icons.search_outlined),
        Container(
          width: width*0.99,
          height: width*0.15,
          padding: EdgeInsets.all(10),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search_outlined,size: 35,color: Colors.black,),
              label: Text("Search by store name or phone number",style: TextStyle(
                fontSize: 12.sp,
              ),),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ),
        )


      ],);
  }
}

