import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/discountWidgets.dart';
import 'package:food_app/components/dropdown.dart';
import 'package:food_app/components/recommendedItems.dart';
import 'package:food_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2A4BA0),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 52),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hey, Halal",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(22))),
                  badges.Badge(
                    badgeContent: const Text("3"),
                    badgeStyle:
                        const badges.BadgeStyle(badgeColor: Colors.amber),
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        CupertinoIcons.cart,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 43, left: 20, right: 20, bottom: 33),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(21, 48, 117, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  SvgPicture.asset("assest/images/Search Icon.svg"),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 250,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Search Products or store",
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 95),
                        child: Text("DELIVERY TO",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: const Color.fromARGB(228, 221, 203, 199),
                                fontSize: getProportionateScreenWidth(12))),
                      ),
                      const DropDownList(),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 35),
                        child: Text("WITHIN",
                            style: TextStyle(
                                color: const Color.fromARGB(228, 221, 203, 199),
                                fontWeight: FontWeight.normal,
                                fontSize: getProportionateScreenWidth(12))),
                      ),
                      const DropDownListTime(),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                height: getProportionateScreenHeight(800),
                width: getProportionateScreenWidth(500),
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          DiscountWidget(
                            image: "assest/images/dicountmeat.png",
                            text1: "Get",
                            text2: "50 % OFF",
                            text3: "On first 03 order",
                            containerColor: Colors.amber,
                          ),
                          DiscountWidget(
                            image: "assest/images/fishdiscount.png",
                            text1: "Get",
                            text2: "20 % OFF",
                            text3: "On first 02 order",
                            containerColor:
                                const Color.fromARGB(228, 221, 203, 199),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 120),
                      child: Text(
                        "Recommended",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: getProportionateScreenWidth(30)),
                      ),
                    ),
                    Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                imageUrl.length,
                                (index) => recommendedProduct(
                                  image: imageUrl[index],
                                  text1: title[index],
                                  price: price[index],
                                ),
                              )
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                imageUrl.length,
                                (index) => recommendedProduct(
                                    image: imageUrl[index],
                                    text1: title[index],
                                    price: price[index]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      )),
    );
  }
}
