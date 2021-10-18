import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Por favor informe seu Email";
const String kInvalidEmailError = "Por favor informe um Email valido";
const String kPassNullError = "Por favor informe sua senha";
const String kShortPassError = "Senha fornecida muito curta";
const String kMatchPassError = "Senhas divergentes";
const String kNamelNullError = "Por favor informe seu nome";
const String kPhoneNumberNullError = "Por favor informe seu telefone";
const String kAddressNullError = "Por favor informe seu endereço";