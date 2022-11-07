import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List productItem = [
      {
        "product_icon": Icons.mobile_friendly_sharp,
        "product_name": "Mobile\n Recharge"
      },
      {"product_icon": Icons.satellite_alt, "product_name": "DTH"},
      {
        "product_icon": Icons.electric_meter_sharp,
        "product_name": "Electricity"
      },
      {
        "product_icon": Icons.credit_card,
        "product_name": "Credit Card\n Bill Payment"
      },
      {"product_icon": Icons.maps_home_work, "product_name": "Rent\n Payment"},
      {"product_icon": Icons.local_atm, "product_name": "Loan\n Repayment"},
      {
        "product_icon": Icons.cast_for_education,
        "product_name": "Education \n Fees"
      },
      {"product_icon": Icons.arrow_forward_ios, "product_name": "See All"},
    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child:  Text(
                "Recharge & Pay Bills",
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
                height: height * 0.22,
                padding: const EdgeInsets.all(5.0),
                child: GridView.count(
                  childAspectRatio: 1 / 1,
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(productItem.length, (index) {
                    return SizedBox(
                      height: height * 0.15,
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
                                        productItem[index]["product_icon"]),
                                    color: Colors.white,
                                    iconSize: 25.sp,
                                    onPressed: () {},
                                  ),
                                )
                              : IconButton(
                                  icon:
                                      Icon(productItem[index]["product_icon"]),
                                  color: Colors.deepPurple,
                                  iconSize: 25.sp,
                                  onPressed: () {},
                                ),
                          Text(
                            productItem[index]["product_name"],
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
