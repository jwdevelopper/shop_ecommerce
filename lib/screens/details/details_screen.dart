import 'package:flutter/material.dart';
import 'package:shop_ecommerce/components/rounded_btn_icon.dart';
import 'package:shop_ecommerce/models/Product.dart';
import 'package:shop_ecommerce/size_config.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: RoundedBtnIcon(
            iconData: Icons.arrow_back_ios,
            press: () => Navigator.pop(context), 
          ),
        )
      ),
    );
  }
}



class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}