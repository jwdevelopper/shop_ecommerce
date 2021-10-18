import 'package:flutter/material.dart';
import 'package:shop_ecommerce/screens/forgot_password/components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({ Key? key }) : super(key: key);
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Esqueceu sua senha",
          style: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),),
          centerTitle: true,
      ),
      body: Body(),
    );
  }
}