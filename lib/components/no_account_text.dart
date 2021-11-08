import 'package:flutter/material.dart';
import 'package:shop_ecommerce/constants.dart';
import 'package:shop_ecommerce/screens/forgot_password/forg_password_screen.dart';
import 'package:shop_ecommerce/screens/sign_up/sign_up_screen.dart';

import '../size_config.dart';

class NoAccoutText extends StatelessWidget {
  const NoAccoutText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Não possui uma conta? ", 
        style: TextStyle(fontSize: getProportionateScreenWidth(16)),),
        GestureDetector(
        onTap: () => {Navigator.pushNamed(context, SignUpScreen.routeName)},  
        child: Text("Cadastre-se", 
        style: TextStyle(fontSize: getProportionateScreenWidth(16), color: kPrimaryColor),)),
      ],
    );
  }
}