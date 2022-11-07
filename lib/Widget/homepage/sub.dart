import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Subscribe extends StatelessWidget {
  const Subscribe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List sub_list=[
      {
        "sub_icon": "https://i.gadgets360cdn.com/large/disney_plus_hotstar_logo_1583901149861.jpg",
        "sub_name": "Hotstar",
      },
      {
        "sub_icon": "https://cdn.telanganatoday.com/wp-content/uploads/2021/01/Aha-logo.jpg",
        "sub_name": "Aha",
      },
      {
        "sub_icon": "https://cdn.dribbble.com/users/9378043/screenshots/16832559/netflix__1__4x.png",
        "sub_name": "Netflix",
      },
      {
        "sub_icon": "https://iconape.com/wp-content/files/tj/367373/svg/ios-arrow-forward-logo-icon-png-svg.png",
        "sub_name": "See All",


      },

    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                child:  Text(
                  "Subscriptions",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black87,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                  height: height*0.12,
                  padding: const EdgeInsets.only(
                      bottom: 5.0, top: 5.0, right: 5.0, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: sub_list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: height*0.12,
                              width: width*0.22,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  index == 3
                                      ? Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(15)),
                                    color: Colors.deepPurple,
                                    child:IconButton(
                                      //color: Colors.white,
                                      iconSize: 25.sp,

                                      onPressed: () {},
                                      icon: Image.network(
                                        sub_list[index]["sub_icon"],
                                        color: Colors.white,
                                      ),
                                    ),
                                  ):
                                  Card(
                                    // color: Colors.deepPurple,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Container(
                                      height: height*0.06,
                                      width: width*0.15,
                                      alignment: Alignment.topCenter,
                                      child:
                                      IconButton(
                                        //color: Colors.white,
                                        iconSize: 25.sp,

                                        onPressed: (){

                                        },icon:Image.network(
                                        sub_list[index]["sub_icon"],
                                      ),
                                      ),

                                    ),
                                  ),
                                  Text(
                                    sub_list[index]["sub_name"],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          })
                    ],
                  )),

            ],
          )),
    );

  }
}

// class Subscribe extends StatefulWidget {
//   const Subscribe({Key? key}) : super(key: key);
//
//   @override
//   State<Subscribe> createState() => _SubscribeState();
// }
//
// class _SubscribeState extends State<Subscribe> {



