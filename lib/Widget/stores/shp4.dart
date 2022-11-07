import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List shop_list = [
      {
        "shop_icon": Icons.store_outlined,
        "shop_name": "Grocery \n Stores",
        //"shop_image": "assets/images/sri2.jpg",
      },
      {
        "shop_icon": Icons.apple_rounded,
        "shop_name": "Fruits",
      },
      {
        "shop_icon": Icons.set_meal_outlined,
        "shop_name": "Meat Shop",
      },
      {
        "shop_icon": Icons.local_pharmacy_outlined,
        "shop_name": "Pharmacy",
      },
      {
        "shop_icon": Icons.food_bank_outlined,
        "shop_name": "Food & \n Beverages",
      },
      {
        "shop_icon": Icons.spa_outlined,
        "shop_name": "Salon & Spa",
      },
      {
        "shop_icon": Icons.home_repair_service_outlined,
        "shop_name": "Homerepair \n & cleaning",
      },
      {
        "shop_icon": Icons.pets_outlined,
        "shop_name": "Pet shop",
      },
      {
        "shop_icon": Icons.book_outlined,
        "shop_name": "Stationery",
      },
      {
        "shop_icon": Icons.car_repair_outlined,
        "shop_name": "Car Repair",
      },
      {
        "shop_icon": Icons.chair_outlined,
        "shop_name": "Furniture Store",
      },
      {
        "shop_icon": Icons.sports_baseball_outlined,
        "shop_name": "Sports Store",
      },
    ];
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        elevation: 8.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),

            Container(
              padding: const EdgeInsets.all(8.0),
              child:  Text(
                "Popular Categories",
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
              height: height*0.38,
              padding: const EdgeInsets.all(5.0),
              child: GridView.count(
                childAspectRatio: 2 / 2,
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: List.generate(shop_list.length, (index) {
                  return SizedBox(
                    height: height*0.15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(shop_list[index]["shop_icon"]),
                          iconSize: 25.sp,
                          color: Colors.deepPurple,
                          onPressed: () {},
                        ),
                        Text(
                          shop_list[index]["shop_name"],
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


