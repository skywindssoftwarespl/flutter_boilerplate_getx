import 'package:get/get.dart';

import 'connectivity/internet_connectivity.dart';

class DependencyInjection {
  static void init() {
    Get.put<NetworkController>(NetworkController(), permanent: true);
  }
}
