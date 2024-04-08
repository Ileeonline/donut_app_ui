import 'package:donut_app/tabs/burger_tab.dart';
import 'package:donut_app/tabs/donut_tab.dart';
import 'package:donut_app/tabs/pancake_tab.dart';
import 'package:donut_app/tabs/pizza_tab.dart';
import 'package:donut_app/tabs/smoothie_tab.dart';
import 'package:flutter/material.dart';

import '../utils/my_tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(
      IconPath: 'assets/icons/icon1.png',
    ),
    MyTab(
      IconPath: 'assets/icons/icon2.png',
    ),
    MyTab(
      IconPath: 'assets/icons/icon3.png',
    ),
    MyTab(
      IconPath: 'assets/icons/icon4.png',
    ),
    MyTab(
      IconPath: 'assets/icons/icon5.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'I want to',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    ' EAT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  BurgerTab(),
                  DonutTab(),
                  SmoothieTab(),
                  PancakeTab(),
                  PizzaTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
