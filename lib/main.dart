import 'package:flutter/material.dart';

import 'package:flutter_covid/app/routes/app_views.dart';
import 'package:flutter_covid/app/ui/theme/theme.dart';
import 'package:get/get_navigation/src/root/root_widget.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Covid-19 App',
    theme: theme,
    initialRoute: AppViews.initialRoute,
    onGenerateRoute: AppViews.onGenerateRoutes,
  ));
}
