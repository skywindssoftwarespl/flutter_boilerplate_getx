import 'package:get/get.dart';

import '../../../src/modules/welcome/welcome_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController(), fenix: true);
  }
}
