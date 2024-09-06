import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class WelcomeState {
  WelcomeState() {
    ///Initialize variables
  }
  final RxString dropDownItems = RxString('A');
  List<String> dropDownList = <String>['A', 'B', 'C', 'D'];
    late AnimationController animationController;
  late Animation<double> animation;

}
