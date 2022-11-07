import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Insurance extends StatelessWidget {
  const Insurance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List insurance_list = [
      {
        "insurance_icon": Icons.bike_scooter_outlined,
        "insurance_name": "Bike",
      },
      {
        "insurance_icon": Icons.car_crash_outlined,
        "insurance_name": "Car",
      },
      {
        "insurance_icon": Icons.health_and_safety,
        "insurance_name": "Health",
      },
      {
        "insurance_icon": Icons.personal_injury,
        "insurance_name": "Personal \n Accident",
      },
      {
        "insurance_icon": Icons.light,
        "insurance_name": "Term \n Life",
      },
      {
        "insurance_icon": Icons.travel_explore,
        "insurance_name": "International \n Travel",
      },
      {
        "insurance_icon": Icons.repeat_one,
        "insurance_name": "Insurance \n Renewal",
      },
      {
        "insurance_icon": Icons.arrow_forward_ios,
        "insurance_name": "See All",
      },
    ];
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)),
        elevation: 8.0,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5.0,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Insurance",
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w800,
                  fontSize: 12.sp,
                ),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Container(
              height: height*0.22,
              padding: const EdgeInsets.all(5.0),
              child: GridView.count(
                childAspectRatio: 1 / 1,
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                // physics: const ClampingScrollPhysics(),
                physics: const BouncingScrollPhysics(),
                children: List.generate(insurance_list.length, (index) {
                  return SizedBox(
                    height: height*0.21,
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
                                insurance_list[index]["insurance_icon"]),
                            color: Colors.white,
                            iconSize: 25.sp,
                            onPressed: () {},
                          ),
                        )
                        : IconButton(
                          icon: Icon(
                              insurance_list[index]["insurance_icon"]),
                          iconSize: 25.sp,
                          color: Colors.deepPurple,
                          onPressed: () {},
                        ),
                        // Icon(
                        //   insurance_list[index]["insurance_icon"],
                        //   color: Colors.deepPurple,
                        //   size: 40,
                        // ),
                        Text(
                          insurance_list[index]["insurance_name"],
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


// class Insurance extends StatefulWidget {
//   const Insurance({Key? key}) : super(key: key);
//
//   @override
//   State<Insurance> createState() => _InsuranceState();
// }
//
// class _InsuranceState extends State<Insurance> {


