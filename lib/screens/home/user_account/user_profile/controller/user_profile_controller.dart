import 'package:get/get.dart';

class UserAccountViewController extends GetxController {
  bool subscriptionValue = false;
  subscriptionToggle({required bool switchValue}){
    subscriptionValue = switchValue;
    update();
  }
}
