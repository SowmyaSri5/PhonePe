import 'package:flutter/material.dart';
class Axis2 extends StatelessWidget {
  const Axis2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      child: Column(

        children: [
          ListTile(
            title: const Text("XXXXXXXXXX95"),
            subtitle: const Text("Axis Bank"),
            leading:
            Card(
              child: IconButton(
                icon:  Image.network(
                  "https://png.pngitem.com/pimgs/s/23-238440_axis-bank-png-logo-of-axis-bank-transparent.png",
                  height: height*0.07,
                  width: width*0.07,
                ), onPressed: () {  },
              ),


            ),
          ),

        ],
      ),


    );
  }
}
