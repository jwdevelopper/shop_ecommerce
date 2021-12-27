import 'package:flutter/material.dart';
import 'package:shop_ecommerce/size_config.dart';

class RoundedBtnIcon extends StatelessWidget {
  const RoundedBtnIcon({
    Key? key, 
    required this.iconData, 
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 6.0)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            )
          )
        ),
        onPressed: press,
        child: Icon(iconData, color: Colors.black,),
      ),
    );
  }
}