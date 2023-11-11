import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/category_widget.dart';
import 'package:food_app/size_config.dart';
import 'package:badges/badges.dart' as badges;

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List categories = [
    {
      "image": "assest/images/fish_category.png",
      "name": "Fishes",
      "text": "From Sea",
    },
    {
      "image": "assest/images/meat_category.png",
      "name": "Meats",
      "text": "Organic",
    },
    {
      "image": "assest/images/vegetables_category.png",
      "name": "Vegetables",
      "text": "Organic",
    },
    {
      "image": "assest/images/fruits_category.png",
      "name": "Fruits",
      "text": "Fresh & Organic",
    },
    {
      "image": "assest/images/grains_category.png",
      "name": "Grains",
      "text": "Fresh",
    },
    {
      "image": "assest/images/drinks_category.png",
      "name": "Beverages",
      "text": "Refreshing",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 52),
                child: Row(
                  children: [
                    Text(
                      "Hey, Halal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(22),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(150),
                    ),
                    SvgPicture.asset("assest/images/Search Icon.svg"),
                    SizedBox(
                      width: getProportionateScreenWidth(25),
                    ),
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
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 40, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shop",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: getProportionateScreenWidth(40),
                      ),
                    ),
                    Text(
                      "By Category",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(50),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(top: 40),
                width: getProportionateScreenWidth(600),
                height: getProportionateScreenHeight(700),
                color: Colors.white,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    var pObj = categories[index] as Map? ?? {};
                    return CategoryBox(
                      pObg: pObj,
                      onPressed: () {},
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
