import 'package:flutter/material.dart';

import '../Config/colors.dart';

Builder explorePage(){
  return Builder(
    builder: (context) {
      return Container(
            width: MediaQuery.sizeOf(context).width*0.45,
            height: MediaQuery.sizeOf(context).height*0.078,
            decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10),),
                border: Border.all(
                  width: 2,
                  color: themeColor,
                )
            ),
        child: const Padding(
          padding: EdgeInsets.only(left: 12,top: 15),
          child: Text('Nearby Restaurant',style: TextStyle(
            fontSize: 17,
          ),),
        ),
      );
    }
  );
}