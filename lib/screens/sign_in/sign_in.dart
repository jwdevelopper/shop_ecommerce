import 'package:flutter/material.dart';
import 'package:shop_ecommerce/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}