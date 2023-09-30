import 'package:app/router/auto_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter{
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes =[
    AutoRoute(
      path: '/',
      page: HomeRoute.page,
      ),
    AutoRoute(page: ChatRoute.page),
    AutoRoute(page: HistoryChatRoute.page),
    AutoRoute(page: NotificationRoute.page),
  ];
}