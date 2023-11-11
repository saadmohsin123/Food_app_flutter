// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/size_config.dart';

List imageUrl = [
  "assest/images/lemon.png",
  "assest/images/red-beans.png",
  "assest/images/teabag.png",
  "assest/images/tomatoes.png",
  "assest/images/cucumber.png",
  "assest/images/almonds.png",
];
List title = [
  "Fresh Lemon",
  "Red Beans",
  "Tea Bags",
  "Tomatoes",
  "Cucumber",
  "Almonds",
];
List price = [
  "\$12",
  "\$12",
  "\$2",
  "\$10",
  "\$19",
  "\$21",
];

// ignore: camel_case_types
class recommendedProduct extends StatefulWidget {
  const recommendedProduct({
    super.key,
    required this.image,
    required this.text1,
    required this.price,
  });
  final String image, text1, price;

  @override
  State<recommendedProduct> createState() => _recommendedProductState();
}

// ignore: camel_case_types
class _recommendedProductState extends State<recommendedProduct> {
  bool isfavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: getProportionateScreenHeight(196),
        width: getProportionateScreenWidth(128),
        decoration: BoxDecoration(
            color: const Color.fromARGB(223, 233, 236, 235),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isfavorite = !isfavorite;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.only(left: 90),
                    child: SvgPicture.asset(
                      "assest/images/Heart.svg",
                      color: isfavorite
                          ? Colors.red
                          : const Color.fromARGB(255, 182, 180, 180),
                      height: getProportionateScreenHeight(22),
                      width: getProportionateScreenWidth(26),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(100),
                  child: Image.asset(widget.image),
                ),
              ],
            ),
            // ignore: sized_box_for_whitespace
            const Text(
              "________",
              style: TextStyle(color: Color.fromARGB(74, 169, 159, 159)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.text1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                const Text(
                  "Organic",
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 10),
              height: getProportionateScreenHeight(25),
              width: getProportionateScreenWidth(100),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 240),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Unit",
                    style: TextStyle(
                        fontWeight: FontWeight.normal, color: Colors.black),
                  ),
                  Text(
                    widget.price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  // const SizedBox(width: 1,),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        padding: const EdgeInsets.all(4),
                        width: getProportionateScreenWidth(28),
                        height: getProportionateScreenWidth(28),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 42, 75, 160),
                            shape: BoxShape.circle),
                        child: SvgPicture.asset("assest/images/Layer 2.svg")),
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
