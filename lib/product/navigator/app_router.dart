import 'package:flutter/material.dart';
import 'package:sample_auto_route/dashboard/settings/settings_view.dart';
import 'package:sample_auto_route/dashboard/user/user_detail_view.dart';
import 'package:sample_auto_route/dashboard/user/user_view.dart';
import 'package:sample_auto_route/home/home_detail_view.dart';
import 'package:sample_auto_route/home/home_view.dart';
import 'package:auto_route/auto_route.dart';
import 'package:sample_auto_route/product/navigator/guard/auth_guard.dart';
import '../../dashboard/dashboard_view.dart';
import '../../dashboard/user/model/user_model.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: 'home', initial: true),
    AutoRoute(page: HomeDetailView, path: 'detail', guards: [AuthGuard]),
    AutoRoute(
      page: DashboardView,
      children: [
        AutoRoute(
          page: EmptyPageRouter,
          name: 'UserFullRoute',
          path: 'userFullRoute',
          children: [
            AutoRoute(initial: true, page: UserView, path: 'userView'),
            AutoRoute(page: UserDetailView, path: ':id'),
          ],
        ),
        AutoRoute(
          page: SettingView,
          guards: [AuthGuard],
          path: 'settings',
        ),
      ],
    ),
  ],
)

// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({super.key});
}
