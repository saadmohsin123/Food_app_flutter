import 'package:flutter/material.dart';
import 'package:food_app/constant.dart';
import 'package:food_app/screens/categories/category_screen.dart';
import 'package:food_app/screens/home/home_screen.dart';
import 'package:food_app/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const SplashScreen(),
  '/homescreen': (context) => const HomeScreen(),
  '/categoriesscreen': (context) => const CategoriesScreen(),
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Store360',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Manrope",
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: whiteText),
          bodyMedium: TextStyle(color: whiteText),
        ),
        scaffoldBackgroundColor: const Color(0xFF2A4BA0),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: routes,
    );
  }
}
