import 'package:flutter/material.dart';
import 'package:flutter_donuts/tab/burger_tab.dart';
import 'package:flutter_donuts/tab/donut_tab.dart';
import 'package:flutter_donuts/tab/pancake_tab.dart';
import 'package:flutter_donuts/tab/pizza_tab.dart';
import 'package:flutter_donuts/tab/smoothie_tab.dart';
import 'package:flutter_donuts/util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(iconPath: 'lib/icons/donut.png',),

    MyTab(iconPath: 'lib/icons/burger.png',),

    MyTab(iconPath: 'lib/icons/smoothie.png',),

    MyTab(iconPath: 'lib/icons/pancakes.png',),

    MyTab(iconPath: 'lib/icons/pizza.png',), 

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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    'I want to eat',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            TabBar(tabs: myTabs),

            Expanded(child: TabBarView(
              children: [

                DonutTab(),

                BurgerTab(),

                SmoothieTab(),

                PancakeTab(),

                PizzaTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
