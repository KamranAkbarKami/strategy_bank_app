import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:strategy_bank_app/bindings/initializing_dependencies.dart';
import 'package:strategy_bank_app/screens/auth/login/sign_in/view/sign_in_view.dart';
import 'package:strategy_bank_app/screens/auth/on_boarding/view/on_boarding_screen.dart';
import 'package:strategy_bank_app/utils/colors/colors.dart';

main() async {
  await GetStorage.init();

  runApp(const StrategyBankApp());
}

class StrategyBankApp extends StatelessWidget {
  const StrategyBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Strategy Bank Application',
      debugShowCheckedModeBanner: false,
      initialBinding: InitializingDependency(),
      theme: ThemeData(
        scaffoldBackgroundColor: cWhiteColor,
      ),
      // home: const OnBoardingScreen(),
      home: const SignInView(),
    );
  }
}
