import 'package:flutter/material.dart';
import 'package:shop_ecommerce/screens/home/components/section_title.dart';
import 'package:shop_ecommerce/size_config.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Especialmente para você",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(4),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffCard(
                image: "assets/images/Image Banner 2.png",
                category: "Celulares",
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOffCard(
                image: "assets/images/Image Banner 3.png",
                category: "Roupas",
                numOfBrands: 23,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOffCard extends StatelessWidget {
  const SpecialOffCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(children: [
            Image.asset(image, fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xff343434).withOpacity(0.4),
                    Color(0xff343434).withOpacity(0.15)
                  ])),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
                vertical: getProportionateScreenWidth(10),
              ),
              child: Text.rich(
                  TextSpan(style: TextStyle(color: Colors.white), children: [
                TextSpan(
                    text: "$category\n",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold)),
                TextSpan(text: "$numOfBrands Marcas")
              ])),
            )
          ]),
        ),
      ),
    );
  }
}