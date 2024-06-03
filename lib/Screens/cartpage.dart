import 'package:flutter/material.dart';
import '../Config/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
          title: const Text("Cart",
            style: TextStyle(fontSize: 22),),
          backgroundColor: themeColor,
          actions:const [Icon(Icons.arrow_forward_ios,size: 26,color: Colors.black)]
      ),
      body: Column(
        children: [
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: MediaQuery.sizeOf(context).height*0.13,
              width: MediaQuery.sizeOf(context).width*0.9,
              decoration: BoxDecoration(
                color: themeColor,
                borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              child: Row(
                children: [
                  Container(

                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
