import 'package:flutter/material.dart';
import 'package:shop_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Esqueceu sua senha",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(28),
            color: Colors.black,
            fontWeight: FontWeight.bold
            //TODO: 26:35
          ),
        )
      ],
    );
  }
}