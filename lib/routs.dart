
import 'package:flutter/cupertino.dart';
import 'package:shop_ecommerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_ecommerce/screens/forgot_password/forg_password_screen.dart';
import 'package:shop_ecommerce/screens/home/home_screen.dart';
import 'package:shop_ecommerce/screens/login_success/login_success_screen.dart';
import 'package:shop_ecommerce/screens/otp/otp_screen.dart';
import 'package:shop_ecommerce/screens/sign_in/sign_in.dart';
import 'package:shop_ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:shop_ecommerce/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen()
};