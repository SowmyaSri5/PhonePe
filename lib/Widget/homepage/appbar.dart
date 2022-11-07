import 'package:flutter/material.dart';

import '../../Screen/profiles.dart';

class AppBarNew extends StatelessWidget {
  const AppBarNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Add Address"),


      leading:

         Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              iconSize: 45,
              color: Colors.white,
              onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Per()));

              },

            ),
            Positioned(
                // top: 10,
                // left: 10,
                child:
                SizedBox(
                  width: 40,
                  height: 40,
                )),
            Positioned(
              height: 15,
               width: 25,
               bottom: 10,
               left: 35,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMq_m5LH8BZEYB5Nsu0-GyscCART00iFhYCA&usqp=CAU"),

            ),
          ],
        //
        //
      ),





      actions: [
        Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Icon(Icons.document_scanner_outlined)),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,

          child: Icon(Icons.notifications),

        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Icon(Icons.question_mark_rounded),
        ),
      ],
      backgroundColor: Colors.deepPurple,
    );
  }
}

// class AppBarNew extends StatefulWidget {
//   const AppBarNew({Key? key}) : super(key: key);
//
//   @override
//   State<AppBarNew> createState() => _AppBarNewState();
// }
//
// class _AppBarNewState extends State<AppBarNew> {
//
//   @override
//   Widget build(BuildContext context) {
