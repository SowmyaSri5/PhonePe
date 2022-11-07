import 'package:flutter/material.dart';
class Bank extends StatelessWidget {
  const Bank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      child: Column(

        children: [
          ListTile(
            title: const Text("XXXXXXXXXX80"),
            subtitle: const Text("ICICI Bank"),
            leading:
            Card(
              child: IconButton(
                icon:  Image.network(
                  "https://i0.wp.com/logotaglines.com/wp-content/uploads/2016/08/ICICI-Logo.png?fit=386%2C395&ssl=1",
                  height: height*0.09,
                  width: width*0.09,
                ), onPressed: () {  },
              ),


            ),
          ),

        ],
      ),


    );
  }
}
