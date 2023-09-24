import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mountiemobile/presentation/screens/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page)
  ];
}
