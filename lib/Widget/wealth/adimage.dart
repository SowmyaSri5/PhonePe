import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Imi extends StatefulWidget {
  const Imi({Key? key}) : super(key: key);

  @override
  State<Imi> createState() => _ImiState();
}

class _ImiState extends State<Imi> {
  int activeIndex = 0;
  final urlImages = [
    'https://resize.indiatvnews.com/en/resize/newbucket/730_-/2020/02/phonepe-1580731155.jpg',
    'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202101/phonepe_0_1200x768.jpeg',
    'https://miro.medium.com/max/1200/1*EghnDrDcNrxSrlaWiCXdVQ.jpeg',
  ];
 // var activeIndex;

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
            height: height*0.21,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          //items: items, options: options,
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImg = urlImages[index];

            return buildImage(urlImg, index);
          },
        ),

        buildIndicator(),
      ],
    ),
    ],
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        
        child:ClipRRect(
          borderRadius: BorderRadius.circular(10),
          
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
            width: 350,
          ),
          
        ),
       
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: urlImages.length,
    effect:  const SlideEffect(
      dotWidth: 8,
      dotHeight: 8,
      //dotColor: Colors.black87,
    ),
  );
}


