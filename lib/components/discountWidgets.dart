// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_app/size_config.dart';

// ignore: must_be_immutable
class DiscountWidget extends StatelessWidget {
   DiscountWidget(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.containerColor});
  final String image, text1, text2, text3;
  var containerColor = Colors.white38; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(20)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: getProportionateScreenHeight(122),
            width: getProportionateScreenWidth(242),
            decoration: BoxDecoration(
              color: containerColor, 
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: getProportionateScreenHeight(80),
                  margin: const EdgeInsets.only(left: 12),
                  child: Image.asset(image),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: getProportionateScreenWidth(16)),
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: getProportionateScreenWidth(24)),
                      ),
                      Text(
                        text3,
                        style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: getProportionateScreenWidth(12)),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
