import 'package:flutter/material.dart';
import 'package:shop_ecommerce/constants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text("Verificação OTP", style: headingStyle,),
          Text("Nós enviaremos seu código para +55 (62) 93965-****"),
          Row(
            children: [
              Text("Seu código expira em "),
              TweenAnimationBuilder(
                tween: Tween(begin: 30.0, end: 0), 
                duration: Duration(seconds: 30), 
                builder: (context,value, child) {
                  double valor = double.parse(value.toString());
                  return Text("${valor.toInt()}");
                } 
              )
            ],
          )
        ],
      ),
    );
  }
}