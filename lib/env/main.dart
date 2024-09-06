import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utility/dependency_injection.dart';
import '../core/utility/route/app_binding.dart';
import '../core/utility/route/app_route.dart';

void main() {
  runApp(const MyApp());
  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'demo',
      initialRoute: AppRoutes.start,
      getPages: AppPages.pages,
      initialBinding: AppBindings(),
    );
  }
}
