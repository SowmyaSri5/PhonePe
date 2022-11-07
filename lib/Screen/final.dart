import 'package:flutter/material.dart';
import 'homepage.dart';
import 'stores.dart';
import 'wealth.dart';
import 'history.dart';
import 'insurancelife.dart';
class Latest extends StatefulWidget {
  const Latest({Key? key}) : super(key: key);

  @override
  State<Latest> createState() => _LatestState();
}

class _LatestState extends State<Latest> {
  int gen = 0;
  final screens = [
    const HomePage(),
    const Stores(),
    const Thirdbutton(),
    const Wealth(),
    const History(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[gen],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.house_siding_sharp),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.store_outlined),
              label: "Stores"),
          BottomNavigationBarItem(
              icon: Icon(Icons.security), label: "Insurance"),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on_outlined), label: "Wealth"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),

        ],
    type: BottomNavigationBarType.fixed,
    currentIndex: gen,
    selectedFontSize: 14,
    unselectedFontSize: 14,

    selectedItemColor: Colors.deepPurple,
    unselectedItemColor: Colors.black45,
    onTap: (int index) {
      //print(index);
      setState(() {
        gen = index;
      });
    }),

    );

  }
}
