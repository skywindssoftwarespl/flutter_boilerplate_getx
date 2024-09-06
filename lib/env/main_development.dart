import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utility/dependency_injection.dart';
import '../core/utility/route/app_binding.dart';
import '../core/utility/route/app_route.dart';
import '../src/widgets/error_page.dart';

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
      builder: (BuildContext context, Widget? widget) {
        ErrorWidget.builder = (FlutterErrorDetails details) {
          return ErrorPage(errorDetails: details);
        };
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: widget ?? Container(),
        );
      },
      // home: MyHomePage(),
    );
  }
}
