import 'package:get/get.dart';

import '../../../paywall/view/paywall_screen.dart';

class UserAccountViewController extends GetxController {
  bool subscriptionValue = false;

  subscriptionToggle({required bool switchValue}) {
    subscriptionValue = switchValue;
    update();
    if (switchValue) {
      Get.to(() => const PayWallScreen());
    }
  }
}
