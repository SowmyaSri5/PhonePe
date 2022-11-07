import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Switchtype extends StatelessWidget {
  const Switchtype({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List switch_list = [
      {
        "switch_icon":
            "https://play-lh.googleusercontent.com/A8jF58KO1y2uHPBUaaHbs9zSvPHoS1FrMdrg8jooV9ftDidkOhnKNWacfPhjKae1IA",
        "switch_name": "Swiggy",
      },
      {
        "switch_icon":
            "https://e7.pngegg.com/pngimages/546/33/png-clipart-ola-cabs-taxi-github-computer-software-customer-service-taxi-logo-car-rental-thumbnail.png",
        "switch_name": "OlaCabs",
      },
      {
        "switch_icon":
            "https://play-lh.googleusercontent.com/GDz-jb59bT1pStsNQ_8w0jmu5gsKInnTPSWQT30_GVDFY6ODx4RdzbYhi0tB4pelxA",
        "switch_name": "Nykaa",
      },
      {
        "switch_icon":
            "https://iconape.com/wp-content/files/tj/367373/svg/ios-arrow-forward-logo-icon-png-svg.png",

        "switch_name": "See All",
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
            child: Text(
              "Switch",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w800,
                fontSize: 12.sp,
              ),
            ),
          ),
          Container(
              height: height * 0.12,
              padding: const EdgeInsets.only(
                  bottom: 5.0, top: 5.0, right: 5.0, left: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: switch_list.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: height * 0.12,
                          width: width * 0.22,
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
                                  color: Colors.white,
                                  iconSize: 25.sp,

                                  onPressed: () {},
                                  icon: Image.network(
                                    switch_list[index]["switch_icon"],
                                    color: Colors.white,
                                  ),
                                ),
                                    )
                                  : Card(
                                      // color: Colors.deepPurple,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Container(
                                        height: height * 0.06,
                                        width: width * 0.15,
                                        alignment: Alignment.topCenter,
                                        child: IconButton(
                                          iconSize: 25.sp,
                                          //color: Colors.white,
                                          onPressed: () {},
                                          icon: Image.network(
                                            switch_list[index]["switch_icon"],
                                          ),
                                        ),
                                      ),
                                    ),
                              Text(
                                switch_list[index]["switch_name"],
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

// class Switchtype extends StatefulWidget {
//   const Switchtype({Key? key}) : super(key: key);
//
//   @override
//   State<Switchtype> createState() => _SwitchtypeState();
// }
//
// class _SwitchtypeState extends State<Switchtype> {
