import 'package:flutter/material.dart';
import 'package:shop_ecommerce/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  OtpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verificação OTP', style: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}