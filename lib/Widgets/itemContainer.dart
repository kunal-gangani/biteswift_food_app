import 'package:bite_swift_food_app_flutter/Screens/category.dart';
import 'package:flutter/material.dart';

import '../Config/colors.dart';

Builder itemContainer({required String name}){
  return Builder(
    builder: (context) {
      return Container(
          width: MediaQuery.sizeOf(context).width*0.445,
          height: MediaQuery.sizeOf(context).height*0.28,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/Rectangle1.png')
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
                    Expanded(
                      child: Text(name,
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
                            Navigator.push(context, MaterialPageRoute(builder: (ctx)=>CategoryPage()));
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