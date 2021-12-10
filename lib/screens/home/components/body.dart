import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ecommerce/constants.dart';
import 'package:shop_ecommerce/models/Product.dart';
import 'package:shop_ecommerce/screens/home/components/categories.dart';
import 'package:shop_ecommerce/screens/home/components/discount_banner.dart';
import 'package:shop_ecommerce/screens/home/components/home_header.dart';
import 'package:shop_ecommerce/screens/home/components/popular_products.dart';
import 'package:shop_ecommerce/screens/home/components/product_card.dart';
import 'package:shop_ecommerce/screens/home/components/section_title.dart';
import 'package:shop_ecommerce/screens/home/components/special_offers.dart';
import 'package:shop_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHeader(),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          DiscountBanner(),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Categories(),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          SpecialOffer(),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          PopularProducts(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
        ],
      ),
    ));
  }
}


