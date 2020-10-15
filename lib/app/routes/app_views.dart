import 'package:flutter/material.dart';
import 'package:flutter_covid/app/bindings/home_binding.dart';
import 'package:flutter_covid/app/routes/app_routes.dart';
import 'package:flutter_covid/app/ui/views/home_view.dart';
import 'package:get/get.dart';

class AppViews {
  static const String initialRoute = AppRoutes.home;

  static Route<GetPageRoute> onGenerateRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.home:
      default:
        return GetPageRoute(
          binding: HomeBinding(),
          page: () => HomeView(),
          routeName: AppRoutes.home,
        );
    }
  }
}
