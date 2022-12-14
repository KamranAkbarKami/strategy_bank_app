import 'package:get/get.dart';

import '../screens/auth/login/forgot_password/controller/forgotPasswordController.dart';
import '../screens/auth/login/sign_in/controller/signViewController.dart';
import '../screens/auth/on_boarding/controller/onBoardingController.dart';
import '../screens/auth/registration/controller/registerViewController.dart';
import '../screens/home/article/suggest_strategies/controller/suggest_strategies_controller.dart';
import '../screens/home/favourites/controller/favourites_view_controller.dart';
import '../screens/home/home_page/controller/home_page_controller.dart';
import '../screens/home/strategies/controller/strategies_controller.dart';
import '../screens/home/user_account/changePassword/controller/change_password_controller.dart';
import '../screens/home/user_account/change_profile_info/controller/change_profile_info_controller.dart';
import '../screens/home/user_account/language_selection/controller/language_selection_controller.dart';
import '../screens/home/user_account/user_profile/controller/user_profile_controller.dart';
import '../utils/get_storage/get_storage_controller.dart';

class InitializingDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStorageController(), fenix: true);
    Get.lazyPut(() => ForgotPasswordController(), fenix: true);
    Get.lazyPut(() => SignInViewController(), fenix: true);
    Get.lazyPut(() => OnBoardingController(), fenix: true);
    Get.lazyPut(() => RegistrationViewController(), fenix: true);
    Get.lazyPut(() => SuggestStrategiesController(), fenix: true);
    Get.lazyPut(() => FavouritesViewController(), fenix: true);
    Get.lazyPut(() => HomePageController(), fenix: true);
    Get.lazyPut(() => StrategiesController(), fenix: true);
    Get.lazyPut(() => ChangeProfileInfoController(), fenix: true);
    Get.lazyPut(() => ChangePasswordController(), fenix: true);
    Get.lazyPut(() => LanguageController(), fenix: true);
    Get.lazyPut(() => UserAccountViewController(), fenix: true);
  }
}
