import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'welcome_state.dart';

class WelcomeController extends GetxController with GetSingleTickerProviderStateMixin {
  WelcomeState state = WelcomeState();

  @override
  void onInit() {
    state.animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    state.animation = Tween<double>(begin: 0.0, end: 1.0).animate(state.animationController);
    super.onInit();
  }
}
