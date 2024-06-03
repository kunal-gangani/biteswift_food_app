import 'package:bite_swift_food_app_flutter/Screens/cartpage.dart';
import 'package:bite_swift_food_app_flutter/Widgets/explorePageContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Config/colors.dart';
import 'explorePageContainer.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

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
          title: const Text("Explore",
            style: TextStyle(fontSize: 22),),
          backgroundColor: themeColor,
          actions:const [Icon(Icons.arrow_forward_ios,size: 26,color: Colors.black)]
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: explorePage(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: explorePage(),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: explorePageRest(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: explorePageRest(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: explorePageRest(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: explorePageRest(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: explorePageRest(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: explorePageRest(),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CartPage()));
              },
              child: Container(
                height: 20,
                width: 50,
                color: themeColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
