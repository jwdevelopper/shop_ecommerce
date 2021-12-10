import 'package:flutter/material.dart';
import 'package:shop_ecommerce/screens/home/components/icon_btn_with_count.dart';
import 'package:shop_ecommerce/screens/home/components/search_field.dart';
import 'package:shop_ecommerce/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCount(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {},
          ),
          IconBtnWithCount(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 4,
            press: () {},
          ),
        ],
      ),
    );
  }
}