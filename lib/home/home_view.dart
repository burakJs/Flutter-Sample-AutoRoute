import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_auto_route/product/navigator/app_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String _url = 'https://picsum.photos/536/354';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IconButton(
        onPressed: () {
          context.router.navigate(HomeDetailRoute(url: _url));
        },
        icon: Image.network(_url),
      ),
    );
  }
}
