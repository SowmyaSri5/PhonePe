import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

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
          ListTile(
              leading: Image.network("https://www.aacai.com.au/wp-content/plugins/userpro/img/default_avatar_male.jpg",
               // height: 100,
                height: height*0.15,width: width*0.15,
               ),
              title:  Text("Sowmya Sri",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.sp
              ),),
              subtitle: Text("9977213456", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp
              ),),
            trailing:  IconButton(
              icon:  Icon(Icons.arrow_forward_ios_outlined,size: 10.sp,color: Colors.black45,), onPressed: () {  },
          ),
          ),

        ],
      ),

      
    );
  }
}
