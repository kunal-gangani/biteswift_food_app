import 'package:flutter/material.dart';

Builder similarProDuct(){
  return Builder(
    builder: (context) {
      return Container(
        height: MediaQuery.sizeOf(context).height*0.125,
        width: MediaQuery.sizeOf(context).width*0.36,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border.all(
              width: 2,
              color: Colors.black,
            )
        ),
      );
    }
  );
}