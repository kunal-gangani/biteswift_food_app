import 'package:flutter/material.dart';

Builder searchBar(){
  return Builder(
    builder: (context) {
      return Container(
            child: Container(
              height: MediaQuery.sizeOf(context).height*0.06,
              width: MediaQuery.sizeOf(context).width*0.85,
              decoration:  BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Search",style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  ),
                ),
              ),
            ),
      );
    }
  );
}