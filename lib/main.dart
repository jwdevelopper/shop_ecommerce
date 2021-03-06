import 'package:flutter/material.dart';
import 'package:shop_ecommerce/routs.dart';
import 'package:shop_ecommerce/screens/splash/splash_screen.dart';
import 'package:shop_ecommerce/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }

  
}

