import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/value/assets.dart';
import '../../../core/value/dimens.dart';
import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Lottie.asset(
            //   Assets.welcome,
            //   fit: BoxFit.cover,
            //   animate: true,
            // ),

            Center(
              child: SizedBox(
                  height: 80,
                  width: 80,
                  child: FadeTransition(opacity: controller.state.animation, child: Image.asset(Assets.logo))),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24.0),
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: kDebugMode ? Colors.red : Colors.black, fontWeight: FontWeight.bold, fontSize: 21),
              ),
            ),
            height_16x,
          ],
        ),
      ),
    );
  }
}
