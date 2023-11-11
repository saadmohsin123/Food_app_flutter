// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:food_app/components/bottomNavigationBar.dart';
import 'package:food_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text":
          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 1",
      "image": "assest/images/splashscreen1.png",
      "word": "one"
    },
    {
      "text":
          "There's something for everyone to enjoy with Sweet Shop Favourites Screen 2",
      "image": "assest/images/splashscreen2.png",
      "word": "two"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 33),
            margin: const EdgeInsets.only(left: 42, right: 42),
            child: SafeArea(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"]!,
                  image: splashData[index]["image"]!,
                  word: splashData[index]["word"]!,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 200,
          height: 60,
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BottomNavigation()));
            },
            child: Ink(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13), color: Colors.white),
              child: Row(
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(16),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SvgPicture.asset("assest/images/Arrow 4.svg")
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 13,
        )
      ],
    );
  }
}

int currentPage = 0;
Container buildDot(int index) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    height: 6,
    width: currentPage == index ? 35 : 20,
    decoration: BoxDecoration(
      color: currentPage == index
          ? Colors.white
          : const Color.fromRGBO(237, 239, 243, 0.5),
      borderRadius: BorderRadius.circular(3),
    ),
  );
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.image,
    required this.word,
  });
  final String text, image, word;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Your holiday shopping delivered to Screen",
          textAlign: TextAlign.left,
          style: TextStyle(
              color: const Color.fromRGBO(250, 251, 253, 1),
              fontSize: getProportionateScreenWidth(35),
              fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(word,
                style: TextStyle(
                    color: const Color.fromRGBO(250, 251, 253, 1),
                    fontSize: getProportionateScreenWidth(35),
                    fontWeight: FontWeight.bold)),
            const SizedBox(width: 60),
            SvgPicture.asset(
              "assest/images/Emoji.svg",
              height: getProportionateScreenHeight(40),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: getProportionateScreenHeight(18),
            color: const Color.fromRGBO(178, 187, 206, 1),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
            children: List.generate(
          2,
          (index) => buildDot(index),
        )),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
        ),
      ],
    );
  }
}
