import 'package:bite_swift_food_app_flutter/Config/colors.dart';
import 'package:bite_swift_food_app_flutter/Widgets/itemContainer.dart';
import 'package:bite_swift_food_app_flutter/Widgets/searchContainer.dart';
import 'package:bite_swift_food_app_flutter/Widgets/itemtext.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        title: const Text('BiteSwift',style: TextStyle(
          fontSize: 26,
        ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            searchBar(),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: itemText(itemName: "Popular Items"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: itemContainer(name: "Maharaja Mac"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: itemContainer(name: "Veg Burger"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: itemText(itemName: "Special Offers")),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: itemContainer(name: "Cheese Burst"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: itemContainer(name: "Mac Burger"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: itemText(itemName: "New Arrivals"),
              ),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: itemContainer(name: "Pizza Burger"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: itemContainer(name: "Cheese Burger"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
