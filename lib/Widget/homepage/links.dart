import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class Sponsored extends StatelessWidget {
  const Sponsored({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List sponsored_items = [
      {
        "sponsored_icon":
    "https://www.citypng.com/public/uploads/preview/zomato-round-logo-icon-11662674419flzipjru1y.png",
    //"https://upload.wikimedia.org/wikipedia/commons/2/2d/Zomato_Logo.jpg",
        //"https://branditechture.agency/brand-logos/wp-content/uploads/wpdm-cache/Screenshot_20220621-202824-900x0.png",
        "sponsored_name": "Zomato"
      },
      {
        "sponsored_icon":
            "https://www.kotak.com/content/dam/Kotak/about-us/kotak-logo-identity.jpg",

        //"https://globalprimenews.com/wp-content/uploads/2020/05/IMG_20200513_143930-777x437.png",
        "sponsored_name": "Kotak811"
      },
      {
        "sponsored_icon":
            "https://is2-ssl.mzstatic.com/image/thumb/Purple112/v4/83/34/b2/8334b214-963e-56a5-cfa9-ccf989bdff07/AppIcon-0-0-1x_U007emarketing-0-0-0-9-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1024x1024bb.png",
       // "https://1000logos.net/wp-content/uploads/2020/07/Ajio-Logo.png",
        "sponsored_name": "Ajio"
      },
      {
        "sponsored_icon":
            "https://www.jantakareporter.com/wp-content/uploads/2021/01/myntra.png",
        //"https://1000logos.net/wp-content/uploads/2022/08/Myntra-Logo.png",
        "sponsored_name": "Myntra"
      },
    ];
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
                "Sponsored Links",
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
                //padding: EdgeInsets.all(5.0),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: sponsored_items.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            // height: height * 0.20,
                            // width: width * 0.20,
                            height: height*0.12,
                            width: width*0.22,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  // color: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                    // height: 70,
                                    // width: 70,
                                    height: height*0.06,
                                    width: width*0.10,
                                    alignment: Alignment.topCenter,
                                    child: IconButton(
                                      iconSize: 50.sp,
                                      onPressed: () {},
                                      icon: Image.network(
                                        sponsored_items[index]
                                        ["sponsored_icon"],
                                        fit: BoxFit.fill,
                                        height: height*0.15,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  sponsored_items[index]["sponsored_name"],
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
        ),
      ),
    );
  }
}


// class Sponsored extends StatefulWidget {
//   const Sponsored({Key? key}) : super(key: key);
//
//   @override
//   State<Sponsored> createState() => _SponsoredState();
// }
//
// class _SponsoredState extends State<Sponsored> {

