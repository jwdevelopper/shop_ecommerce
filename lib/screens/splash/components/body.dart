import 'package:flutter/material.dart';
import 'package:shop_ecommerce/components/default_button.dart';
import 'package:shop_ecommerce/constants.dart';
import 'package:shop_ecommerce/screens/sign_in/sign_in.dart';
import 'package:shop_ecommerce/screens/splash/components/splash_content.dart';
import 'package:shop_ecommerce/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Bem vindo ao TOKOTO, bora para o app!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "Nós ajudamos pessoas com nossa loja! \nnascida no noroeste do paraná",
      "image": "assets/images/splash_2.png"
    },
    {
      "text":
          "Nós temos uma plataforma de facil acesso! \nVenha conosco nessa experiencia",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'] ?? "",
                  text: splashData[index]['text'] ?? "",
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index: index),
                          ),
                        ),
                      ),
                      DefaultButton(
                        text: "Continuar",
                        press: (){
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      //responsavel por mudar a esfera que indica o selecionado, optei por deixar todas padrão
      //width: currentPage == index ? 20 : 6,
      width: 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0XFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}


