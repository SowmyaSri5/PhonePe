import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
           ListTile(
            title: Text("Payment Instruments",style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),),
            subtitle: Text("Bank Accounts",style: TextStyle(
              fontSize: 10.sp,
            ),),
          ),
          //  SizedBox(
          //   height: height*0.0 ,
          // ),
          SizedBox(
            height: height*0.16,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              separatorBuilder: (context, index) {
                return  SizedBox(
                  width: width*0.10,
                );
              },
              itemBuilder: (context, index) {
                return buildCard(index);
              },
              itemCount: 1,
            ),
          ),

          Divider(
            height: 1,
            thickness: 0.4,
            color: Colors.grey,
          ),
          // Text("PhonePe Wallet",),
          Container(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "PhonePe Wallet",
                style: TextStyle(
                    color: Colors.black45,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                "₹0",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),

                // icon: Icon(Icons.save),
                label: Text(
                  "TOP-UP",

                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height*0.01,
          ),

          Container(
            padding: EdgeInsets.all(6),
            color:  Color(0xFFC2E5EF),
            height: height*0.05,
            child:  Align(
              alignment: Alignment.center,
              child: Text(
                "View All Payment Methods  >",
                style: TextStyle(
                  fontSize: 11.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(int index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    //"https://www.indiaherald.com/cdn-cgi/image/width=350/imagestore/images/business/technology_videos/axisbank-415x250.jpg",
                    //"https://images.moneycontrol.com/static-mcnews/2021/11/Axis-bank_ace-credit-card-690x435.jpeg?impolicy=website&width=1600&height=900",
                    "assets/images/w1.jpeg",
                    height: 100,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(
                  width: 12,
                ),
  ClipRRect(
  borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                 "assets/images/w2.jpeg",
                  height: 100,
                  width: 150,
                  fit: BoxFit.cover,
                ),
  ),
                SizedBox(
                  width: 12,
                ),
               Card(
//shape: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        strokeAlign: StrokeAlign.outside,
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                    height: 100,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          iconSize: 15.sp,
                          color: Colors.deepPurple,
                        ),
                        SizedBox(height: 0.1,),
                        Text(
                          "ADD BANK ACCOUNT",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
                // Card(
                //   //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
                //   //shape: b,
                //   // child: Container(
                //   //   decoration: BoxDecoration(
                //   //     // borderRadius: BorderRadius.circular(50.0),
                //   //     border: Border.all(
                //   //       strokeAlign: StrokeAlign.outside,
                //   //       color: Colors.grey,
                //   //       width: 1.0,
                //   //     ),
                //   //   ),
                //   //   height: 100,
                //   //   width: 150,
                //   //   child: Column(
                //   //     mainAxisAlignment: MainAxisAlignment.center,
                //   //     children: [
                //   //       IconButton(
                //   //         onPressed: () {},
                //   //         icon: Icon(Icons.add),
                //   //         iconSize: 15.sp,
                //   //         color: Colors.deepPurple,
                //   //       ),
                //   //       SizedBox(height: 0.1,),
                //   //       Text(
                //   //         "ADD BANK ACCOUNT",
                //   //         style: TextStyle(
                //   //           fontSize: 10.sp,
                //   //           fontWeight: FontWeight.w500,
                //   //           color: Colors.deepPurple,
                //   //         ),
                //   //       ),
                //   //     ],
                //   //   ),
                //   // ),
                // ),
                // Card(
                //   //color: Colors.blue,
                //   color: Color.fromARGB(100, 150, 196, 236),
                //
                //   child: Container(
                //     height: 100,
                //     width: 150,
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         IconButton(
                //           onPressed: () {},
                //           icon: Image.network(
                //               "https://png.pngitem.com/pimgs/s/23-238440_axis-bank-png-logo-of-axis-bank-transparent.png",
                //               height: 25,
                //               width: 25),
                //         ),
                //         SizedBox(
                //           width: 40,
                //         ),
                //
                //         Text(
                //           "UPI>>",
                //           style: TextStyle(
                //               fontSize: 15,
                //               fontWeight: FontWeight.w600,
                //               fontStyle: FontStyle.italic,
                //               color: Colors.white),
                //         ),
                        // Text(
                        //   "UNITED PAYMENTS INTERFACE",
                        //   style: TextStyle(
                        //       fontSize: 5,
                        //       fontWeight: FontWeight.w500,
                        //       fontStyle: FontStyle.italic,
                        //       color: Colors.white),
                        // ),
                        // Text("Axis Bank-2345"),
                      ],
                    ),
                  ),


              ],



      );
}
// class CustomMaterialColor extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     Map<int,Color> colorCodes = {
//       50: Color.fromRGBO(147, 205, 72, .1),
//       100: Color.fromRGBO(147, 205, 72, .2),
//       200: Color.fromRGBO(147, 205, 72, .3),
//       300: Color.fromRGBO(147, 205, 72, .4),
//       400: Color.fromRGBO(147, 205, 72, .5),
//       500: Color.fromRGBO(147, 205, 72, .6),
//       600: Color.fromRGBO(147, 205, 72, .7),
//       700: Color.fromRGBO(147, 205, 72, .8),
//       800: Color.fromRGBO(147, 205, 72, .9),
//       900: Color.fromRGBO(147, 205, 72, 1),
//
//     };
//
//   }
// }
