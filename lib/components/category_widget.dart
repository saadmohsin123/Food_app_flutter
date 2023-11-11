import 'package:flutter/material.dart';
import 'package:food_app/size_config.dart';

class CategoryBox extends StatelessWidget {
  final Map pObg;
  final VoidCallback onPressed;

  const CategoryBox({Key? key, required this.pObg, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: getProportionateScreenWidth(250),
        height: getProportionateScreenHeight(100),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(224, 224, 226, 238),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              pObg["image"],
              width: 100,
              height: 60,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              pObg["name"],
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              pObg["text"],
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
