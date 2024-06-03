import 'package:flutter/material.dart';

Text itemText({required String itemName}){
  return Text(
    itemName, 
    style: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
  );
}