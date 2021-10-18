import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ecommerce/components/custom_suffix_icon.dart';
import 'package:shop_ecommerce/components/default_button.dart';
import 'package:shop_ecommerce/components/form_error.dart';
import 'package:shop_ecommerce/components/no_account_text.dart';
import 'package:shop_ecommerce/components/social_card.dart';
import 'package:shop_ecommerce/constants.dart';
import 'package:shop_ecommerce/screens/forgot_password/forg_password_screen.dart';
import 'package:shop_ecommerce/screens/sign_in/components/sign_form.dart';
import 'package:shop_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20)
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04,),
                Text(
                  "Bem vindo de volta!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Entre com seu e-mail e senha \ne continue comprando",
                  textAlign: TextAlign.center,
                  
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: (){},
                ),
                    SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: (){},
                ),
                    SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: (){},
                ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                NoAccoutText()
              ],
            ),
          ),
        ),
      )
    );
  }
}









