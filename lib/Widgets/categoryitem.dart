import 'package:bite_swift_food_app_flutter/Screens/productdetails.dart';
import 'package:flutter/material.dart';

import '../Config/colors.dart';

Builder categoryItemContainer(){
  return Builder(
      builder: (context) {
        return Container(
          width: MediaQuery.sizeOf(context).width*0.445,
          height: MediaQuery.sizeOf(context).height*0.28,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('Rectangle1.png')
            ),
            border: Border.all(
              width: 2,
              color: themeColor,
            ),
          ),
          child: Column(
            children: [
              Expanded(child: Container(
                color:whiteClr,
              )),
              Expanded(child: Container(
                color: whiteClr,
                child:  Column(
                  children: [
                    const Expanded(
                      child: Text('Cheese Burger\n',
                        style: TextStyle(
                            fontSize: 16
                        ),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Expanded(
                        child: Text('\$389.00',style: TextStyle(
                          fontSize: 16,
                        ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>const ProductDetails()));
                          },
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
                            child: const Padding(
                              padding: EdgeInsets.only(top: 10,left: 13),
                              child: Text('Add to Cart',style: TextStyle(
                                fontSize: 12,
                              ),),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        );
      }
  );
}