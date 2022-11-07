import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Allfunds extends StatelessWidget {
  const Allfunds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List exp_item = [
      {
        "exp_icon": Icons.currency_rupee_outlined,
        "exp_name": "Large Cap\n Funds"
      },
      {
        "exp_icon": Icons.money,
        "exp_name": "Mid Cap\n Funds"
      },
      {
        "exp_icon": Icons.currency_rupee_rounded,
        "exp_name": "Small Cap\n Funds"
      },
      {
        "exp_icon": Icons.fork_left_outlined,
        "exp_name": "Flexi Cap Funds"
      },
      {
        "exp_icon": Icons.restart_alt_outlined,
        "exp_name": "Sectoral \n Funds"
      },
      {
        "exp_icon": Icons.compare_arrows_outlined,
        "exp_name": "Index\n Funds"
      },
      {
        "exp_icon": Icons.highlight_outlined,
        "exp_name": "Value Fund"
      },
      {
        "exp_icon": Icons.arrow_forward_ios_outlined,
        "exp_name": "See All"
      },

    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child:  Text(
                "Mutual Fund Categories ",
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
                  childAspectRatio: 1 / 1,
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(exp_item.length, (index) {
                    return SizedBox(
                      height: height*0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          index == 7
                              ? Card(
                            color: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: IconButton(
                              icon: Icon(
                                  exp_item[index]["exp_icon"]),
                              color: Colors.white,
                              iconSize: 25.sp,
                              onPressed: () {},
                            ),
                          )
                              : IconButton(
                            icon:
                            Icon(exp_item[index]["exp_icon"]),
                            color: Colors.deepPurple,
                            iconSize: 25.sp,
                            onPressed: () {},
                          ),
                          // IconButton(icon:Icon(
                          //     exp_item[index]["exp_icon"]),
                          //   color: Colors.deepPurple,
                          //   iconSize: 30, onPressed: () {  },
                          // ),
                          Text(
                            exp_item[index]["exp_name"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                )),
          ],
        ));
  }
}

