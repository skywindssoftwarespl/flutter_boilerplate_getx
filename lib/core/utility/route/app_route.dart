import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../src/modules/welcome/welcome_page.dart';

abstract class AppRoutes {
  static const String start = '/';
}

class AppPages {
  static GetPage<T> createPage<T>({
    required String name,
    required Widget page,
    // Bindings? binding,
  }) {
    return GetPage<T>(
        name: name,
        page: () => page,
        // binding: binding,
        transition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 300),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  static List<GetPage<dynamic>> pages = <GetPage<dynamic>>[createPage(name: AppRoutes.start, page: const WelcomePage())];
}
