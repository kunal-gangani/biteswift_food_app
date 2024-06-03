import 'package:bite_swift_food_app_flutter/Config/colors.dart';
import 'package:bite_swift_food_app_flutter/Widgets/itemContainer.dart';
import 'package:bite_swift_food_app_flutter/Widgets/searchContainer.dart';
import 'package:flutter/material.dart';

import '../Widgets/categoryitem.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 26,
          ),
        ),
        title: const Text("Categories",
          style: TextStyle(fontSize: 22),),
        backgroundColor: themeColor,
        actions: const [Icon(Icons.arrow_forward_ios,size: 26,color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
           const SizedBox(height: 10,
           width: double.infinity,) ,
            searchBar(),
            const SizedBox(
              height: 20,
                width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.055,
                    width: MediaQuery.sizeOf(context).width*0.23,
                    decoration: BoxDecoration(
                        color: themeColor,
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))
                    ),
                    child: const Center(
                      child: Text('Pizza',style: TextStyle(
                        fontSize: 16,
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,
            width: double.infinity,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: categoryItemContainer(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: categoryItemContainer(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,
            width: double.infinity,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: itemContainer(name: "Cheese Burger"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: itemContainer(name: "Maharaja Mac"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,
            width: double.infinity,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: categoryItemContainer(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: categoryItemContainer(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
