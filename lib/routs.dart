
import 'package:flutter/cupertino.dart';
import 'package:shop_ecommerce/screens/forgot_password/forg_password_screen.dart';
import 'package:shop_ecommerce/screens/sign_in/sign_in.dart';
import 'package:shop_ecommerce/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen()
};