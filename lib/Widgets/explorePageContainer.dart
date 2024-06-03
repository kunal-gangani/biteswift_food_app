import 'package:flutter/cupertino.dart';
import '../Config/colors.dart';

Builder explorePageRest(){
  return Builder(
    builder: (context) {
      return Container(
            width: MediaQuery.sizeOf(context).width*0.44,
            height: MediaQuery.sizeOf(context).height*0.3,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 2,
                    color: themeColor
                )
            ),
            child: Column(
              children: [
                Expanded(flex: 8,child: Container(

                )),
                Expanded(flex: 10,child: Container(
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Arabian Fast Food',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),),
                      const Text('5km',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),),
                      const Text('15 Min',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),),
                      Container(
                        width: MediaQuery.sizeOf(context).width*0.24,
                        height: MediaQuery.sizeOf(context).height*0.05,
                        decoration: BoxDecoration(
                            color: themeColor,
                            borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Center(
                          child: Text('Map',style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),),
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