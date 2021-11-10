import 'package:flutter/material.dart';
import 'package:shop_ecommerce/constants.dart';
import 'package:shop_ecommerce/screens/complete_profile/components/complete_profile_form.dart';
import 'package:shop_ecommerce/size_config.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Perfil Completo", style: headingStyle),
                Text(
                  "Complete seus dados ou continue  \ncom suas redes sociais",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "Ao continuar, confirme que concorda \ncom nosso Termo e Condição",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}