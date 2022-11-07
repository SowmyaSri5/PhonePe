import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Investment extends StatelessWidget {
  const Investment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List invst_list = [
      {
        "invest_icon": Icons.diamond_outlined,
        "invest_name": "Diamond",
        "invest_high": "",
      },
      {
        "invest_icon": Icons.twenty_four_mp_outlined,
        "invest_name": "Gold",
        "invest_high": "Popular",
      },
      {
        "invest_icon": Icons.save,
        "invest_name": "Save Taxes",
        "invest_high": "",
      },
      {
        "invest_icon": Icons.looks_one_outlined,
        "invest_name": "Start with 100/-",
        "invest_high": "Popular",
      },
      {
        "invest_icon": Icons.account_tree_sharp,
        "invest_name": "Best SIP Funds",
        "invest_high": "",
      },
      {
        "invest_icon": Icons.currency_rupee_outlined,
        "invest_name": "Better than FD",
        "invest_high": "",
      },
      {
        "invest_icon": Icons.arrow_circle_up_rounded,
        "invest_name": "Trending \n Themes",
        "invest_high": "",
      },
      {
        "invest_icon": Icons.arrow_circle_up_rounded,
        "invest_name": "High Return \n Funds",
        "invest_high": "",
      },
    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: height*0.01,
            ),

            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Investment Ideas",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                  fontSize: 12.sp,
                ),
              ),
            ),
            // const SizedBox(
            //   height: 1.0,
            // ),
            Container(
              height: height*0.25,
              padding: const EdgeInsets.all(5.0),
              child: GridView.count(
                childAspectRatio: 2 / 2,
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: List.generate(invst_list.length, (index) {
                  return SizedBox(
                    height: height*0.05,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //       borderRadius: BorderRadius.circular(15)),
                        Container(
                          height: height*0.06,
                          width: width*0.14,
                          alignment: Alignment.topCenter,
                          child: Stack(

                            children: [
                              IconButton(
                                icon: Icon(invst_list[index]["invest_icon"]),
                                iconSize: 25.sp,
                                color: Colors.deepPurple,
                                onPressed: () {},
                              ),
                              invst_list[index]["invest_high"]
                                  .toString()
                                  .length >=
                                  2
                                  ? Positioned(
                                top:0.1,
                                left: 0.05,
                                height: 25,

                                //right: 0.06,
                                // top:0.1,
                                // right: 0.06,
                                // width: 35,
                                // height: 10,
                                // top: 0.50,
                                // right: 0.05,
                                // height: height*0.03,
                                // width: width*0.14,
                                child: Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  color: Colors.deepOrange,
                                  child: Container(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Text(
                                        invst_list[index]["invest_high"],
                                        style:  TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                                  : Container()
                            ],
                          ),
                        ),
                        Text(
                          invst_list[index]["invest_name"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ));
  }
}



