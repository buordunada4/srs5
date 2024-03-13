// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "hello": "hello",
  "register": "register",
  "register_form": "register form",
  "name": "name",
  "enter_correct_name": "enter correct name",
  "number": "number",
  "enter_correct_number": "enter correct number",
  "email": "email",
  "email_cannot_be_empty": "Email cannot be empty",
  "invalid_email_address": "Invalid email address",
  "submit": "submit",
  "success": "success!"
};
static const Map<String,dynamic> kk = {
  "hello": "salem",
  "register": "tirkey",
  "register_form": "tirkey formasy",
  "name": "aty",
  "enter_correct_name": "zharamdy atay engiziniz",
  "number": "nomeri",
  "enter_correct_number": "zharamdy nomirdi engiziniz",
  "email": "email",
  "email_cannot_be_empty": "poshta bos bolmauy kerek",
  "invalid_email_address": "gjinf durys emes",
  "submit": "beru",
  "success": "zhetistik!"
};
static const Map<String,dynamic> ru = {
  "hello": "привет",
  "register": "регистрация",
  "register_form": "регистрационная форма",
  "name": "имя",
  "enter_correct_name": "введите корректное имя",
  "number": "номер",
  "enter_correct_number": "введите корректный номер",
  "email": "email",
  "email_cannot_be_empty": "почта не может быть пустой",
  "invalid_email_address": "неверный адрес почты",
  "submit": "предоставить",
  "success": "Успех!"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "kk": kk, "ru": ru};
}
