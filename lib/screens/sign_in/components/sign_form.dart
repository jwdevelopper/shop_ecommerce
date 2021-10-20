import 'package:flutter/material.dart';
import 'package:shop_ecommerce/components/custom_suffix_icon.dart';
import 'package:shop_ecommerce/components/default_button.dart';
import 'package:shop_ecommerce/components/form_error.dart';
import 'package:shop_ecommerce/constants.dart';
import 'package:shop_ecommerce/screens/forgot_password/forg_password_screen.dart';
import 'package:shop_ecommerce/screens/login_success/login_success_screen.dart';
import 'package:shop_ecommerce/size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({ Key? key }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String senha;
  late bool remember = false;
  final List<String> errors = [];
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors.length > 0 ? errors : []),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: remember, 
                activeColor: kPrimaryColor,
                onChanged: (value){
                setState(() {
                  remember = value!;
                });
              }),
              Text("Permanecer conectado"),
              Spacer(),
              GestureDetector(
                onTap: () => {Navigator.pushNamed(context, ForgotPasswordScreen.routeName)},
                child: Text("Esqueceu sua senha?", style: TextStyle(
                  decoration: TextDecoration.underline
                ),),
              )
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(text: "Continuar", press: (){
            print("clicou no botão");
            if(_formKey.currentState!.validate()){
              _formKey.currentState!.save();
            }
            Navigator.pushNamed(context, LoginSuccessScreen.routeName);
          })
        ],
      )
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          onChanged: (value) {
            /*print("Chamou o onChaged de password");

            if(value.isEmpty && !errors.contains(kPassNullError)){
              setState(() {
                print('foi para adicionar o erro de valor vazio');
                errors.add(kPassNullError);
              });
            } else if(value.length < 8 && !errors.contains(kShortPassError)){
              setState(() {
                errors.add(kInvalidEmailError);;
              });
            }

            if(value.isNotEmpty && errors.contains(kPassNullError)){
              setState(() {
                print('foi remover o erro de não preenchido');
                errors.remove(kPassNullError);
              });
            } else if(value.length >= 8 && errors.contains(kShortPassError)){
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            print(value.length);
            return null;*/
          },
          onSaved: (newValue) => senha = newValue!,
          /*validator: (value) {
            print("Chamou o validator de password");
            if(value!.isEmpty && !errors.contains(kPassNullError)){
              setState(() {
                print('foi para adicionar o erro de valor vazio');
                errors.add(kPassNullError);
              });
            } else if(value.length < 8 && !errors.contains(kShortPassError)){
              setState(() {
                errors.add(kInvalidEmailError);
              });
            }
            print(value.length);
            return null;
          },*/
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Informe sua senha",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg",)
          ),
        );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
          keyboardType: TextInputType.emailAddress,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: (newValue) => email = newValue!,
          /*onChanged: (value) {
            print("Chamou o onChanged de email");

            if(value.isEmpty && !errors.contains(kEmailNullError)){
              setState(() {
                print('foi para adicionar o erro');
                errors.add(kEmailNullError);
              });
            } else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
              setState(() {
                errors.add(kInvalidEmailError);
              });
            }

            if(value.isNotEmpty && errors.contains(kEmailNullError)){
              setState(() {
                print('foi para adicionar o erro');
                errors.remove(kEmailNullError);
              });
            } else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
              setState(() {
                errors.remove(kInvalidEmailError);
              });
            }
            return null;
          },*/
          /*validator: (value) {
            print("Chamou o validator de email");
            if(value!.isEmpty && !errors.contains(kEmailNullError)){
              setState(() {
                print('foi para adicionar o erro');
                errors.add(kEmailNullError);
              });
            } else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
              setState(() {
                errors.add(kInvalidEmailError);
              });
            }
            return null;
          },*/
          decoration: InputDecoration(
            labelText: "Email",
            hintText: "Informe seu email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg",)
          ),
        );
  }
}