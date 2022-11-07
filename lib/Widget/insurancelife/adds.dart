import 'package:flutter/material.dart';
class Adsimg extends StatelessWidget {
  const Adsimg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.network(
          "https://i.ytimg.com/vi/mmwx5ojDUEs/maxresdefault.jpg",
        ),
        const SizedBox(height: 10.0,),

      ],
    );
  }
}


