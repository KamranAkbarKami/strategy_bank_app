import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:strategy_bank_app/bindings/initializing_dependencies.dart';
import 'package:strategy_bank_app/screens/auth/login/sign_in/view/sign_in_view.dart';
import 'package:strategy_bank_app/screens/auth/on_boarding/view/on_boarding_screen.dart';
import 'package:strategy_bank_app/screens/home/article/send_article/view/article_strategies.dart';
import 'package:strategy_bank_app/screens/home/favourites/view/favourites_view.dart';
import 'package:strategy_bank_app/screens/home/paywall/view/paywall_screen.dart';
import 'package:strategy_bank_app/screens/home/strategies/view/strategies_view.dart';
import 'package:strategy_bank_app/screens/home/user_account/changePassword/view/change_password_enter_email_view.dart';
import 'package:strategy_bank_app/screens/home/user_account/user_profile/view/user_account_view.dart';
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
      home: const OnBoardingScreen(),
      // home: const SignInView(),
      // home: const ChangePasswordView(),
      // home: const PayWallScreen(),
      // home: const FavouritesView(),
      // home: const UserAccountView(),
      // home: const ArticleStrategies(),
      // home: const StrategiesView(),
    );
  }
}
