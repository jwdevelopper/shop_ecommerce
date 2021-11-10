import 'package:flutter/material.dart';
import 'package:shop_ecommerce/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({ Key? key }) : super(key: key);
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login realizado com sucesso",
          style: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),),
        ),
        body: Body(),
      );
      
  }
}