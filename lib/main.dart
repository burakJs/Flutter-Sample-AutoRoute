import 'package:flutter/material.dart';
import 'package:sample_auto_route/product/navigator/app_router.dart';
import 'package:sample_auto_route/product/navigator/guard/auth_guard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter(authGuard: AuthGuard());
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
