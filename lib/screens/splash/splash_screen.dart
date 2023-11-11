import 'package:flutter/material.dart';
import 'package:food_app/components/body.dart';
import 'package:food_app/size_config.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
