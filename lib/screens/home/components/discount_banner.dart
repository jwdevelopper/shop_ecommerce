import 'package:flutter/material.dart';
import 'package:shop_ecommerce/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      width: double.infinity,
      //height: 90,
      decoration: BoxDecoration(
          color: Color(0xff4a3298), borderRadius: BorderRadius.circular(20)),
      child: Text.rich(TextSpan(
          text: "Uma surpresa de verão\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "Cashback de até 20%",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ])),
    );
  }
}
