import 'package:flutter/material.dart';
import 'package:shop_ecommerce/components/default_button.dart';
import 'package:shop_ecommerce/constants.dart';
import 'package:shop_ecommerce/size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({ Key? key }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nexField({required String value, required FocusNode focusNode}) {
    if(value.length == 1){
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nexField(value: value, focusNode: pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nexField(value: value, focusNode: pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    nexField(value: value, focusNode: pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value){
                    pin4FocusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15,),
          DefaultButton(
            text: "Continuar", 
            press: () {},
          )
        ],
      )
    );
  }
}