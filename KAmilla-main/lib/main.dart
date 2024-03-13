import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kamilla/generated/codegen_loader.g.dart';
import 'package:kamilla/pages/register_form.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        assetLoader: CodegenLoader(),
        supportedLocales: [Locale('en'), Locale('ru'), Locale('kk')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: ValidationForm()),
  );
}

class ValidationForm extends StatelessWidget {
  const ValidationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowMaterialGrid: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'Registration Form',
            theme: ThemeData(),
            home: const RegisterFormPage(),
          );
        });
  }
}
