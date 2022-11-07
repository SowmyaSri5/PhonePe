import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  int activeIndex = 0;
  final urlImages = [
     //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxoNSpNnpeo-CnicB3OE2Af1HLcvw3R6uhbHI6UU-1Zmgf7V6oDzdU9rFnxgXJUxAiIuc&usqp=CAU',
     'https://www.indiantelevision.com/sites/default/files/images/tv-images/2020/02/14/phonepe.jpg',
    'https://images.yourstory.com/cs/2/f49f80307d7911eaa66f3b309d9a28f5/Imagewq25-1607009831702.jpg?w=752&fm=auto&ar=2:1&mode=crop&crop=faces',
     'https://images.yourstory.com/cs/2/21ccd920843c11ec88170b5512a0f9d5/Imagecqed-1664181032162.jpg',
    //'https://i.ytimg.com/vi/oPsN7b4s7LA/maxresdefault.jpg',
    //'blob:https://web.whatsapp.com/cd1510b0-8540-4e56-82db-bf84a07c4c58',
    // Image.asset('assets/images/s1.jpeg'),
    // Image.asset('assets/images/s2.jpeg'),
    // Image.asset('assets/images/s3.jpeg'),


  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(

          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: height*0.15,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                final urlImage = urlImages[index];

                return buildImage(urlImage, index);
              },
            ),
            buildIndicator(),

          ],
        )

      ],
    );
  }

  // buildIndicator() {}

  Widget buildImage(String urlImage, int index) => Container(
    margin: EdgeInsets.symmetric(horizontal: 7),

      child:ClipRRect(
        borderRadius: BorderRadius.circular(10),

          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
            width: 320,

          ),
          
          
        ),
        



      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect:  SlideEffect(
          dotWidth: 8,
          dotHeight: 8,
        ),
      );
}
