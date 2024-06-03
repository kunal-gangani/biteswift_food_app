import 'package:bite_swift_food_app_flutter/Screens/explorepage.dart';
import 'package:bite_swift_food_app_flutter/Widgets/similarProduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Config/colors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

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
        title: const Text("Product Details",
          style: TextStyle(fontSize: 22),),
        backgroundColor: themeColor,
        actions:const [Icon(Icons.arrow_forward_ios,size: 26,color: Colors.black)]
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height*0.32,
              width: MediaQuery.sizeOf(context).width*0.89,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10)),
                border: Border.all(
                  width: 2,
                  color: themeColor
                )
              ),
            ),
            const SizedBox(height: 10,
            width: double.infinity),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Text('Cheese Burger',style: TextStyle(
                    fontSize: 20
                  ),),
                  Padding(
                    padding: EdgeInsets.only(left: 136),
                    child: Text('\$389.00',style: TextStyle(
                      fontSize: 20
                    ),),
                  )
                ],
              ),
            ),
            const SizedBox(height: 4,
            width: double.infinity,),
            Padding(
              padding: const EdgeInsets.only(left: 27),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('In Stock',style: TextStyle(
                  fontSize: 16,
                  color: inStockClr,
                ),),
              ),
            ),
            const SizedBox(
              height: 7,
              width: double.infinity,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 27),
              child: Align(
                alignment: Alignment.topLeft,
                  child: Text('⭐⭐⭐⭐⭐')),
            ),
            const SizedBox(
              height: 15,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    const Text('Product Quantity',style: TextStyle(
                      fontSize: 20,
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.24,
                        height: MediaQuery.sizeOf(context).height*0.05,
                        decoration: BoxDecoration(
                            color: themeColor,
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(5),
                                topLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5))
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Text('+',style: TextStyle(fontSize: 30),),
                              Text('1',style: TextStyle(fontSize: 30),),
                              Text('-',style: TextStyle(fontSize: 30),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
              width: double.infinity,
            ),
            const Text('Excepteur sint occaecat cupidatat non proident, sunt in '),
            const Text('culpa qui officia deserunt mollit anim id es officia '),
            const Text('deserunt mollit anim id es officia deserunt mollit anim'),
            const Text('id es officia deserunt mollit anim id es officia deserunt'),
            const Text('anim id es officia deserunt mollit  id es officia deserunt'),
            const Text('mollit anim id es officia deserunt mollit anim id es es '),
            const Text('es officia deseruntes officia deserunt....'),
            const Text('Read More',style: TextStyle(
              color: Colors.red
            ),),
            const SizedBox(height: 10,
            width: double.infinity),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Related Products',style: TextStyle(
                  fontSize: 20,
                ),),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: similarProDuct(),
                  ),Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: similarProDuct(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: similarProDuct(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
              width: double.infinity,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ExplorePage()));
              },
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.06,
                    width: MediaQuery.sizeOf(context).width*0.3,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: themeColor,
                    ),
                    child: const Center(child: Text('Order',style: TextStyle(fontSize: 18),)),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
