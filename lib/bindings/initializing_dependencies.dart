import 'package:get/get.dart';

import '../utils/get_storage/get_storage_controller.dart';

class InitializingDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStorageController(), fenix: true);
  }
}
