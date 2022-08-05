import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sample_auto_route/dashboard/user/model/user_model.dart';
import 'package:sample_auto_route/product/navigator/app_router.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(''.customProfileImage),
          ),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return TextButton(
              onPressed: () => context.router
                  .navigate(UserDetailRoute(model: UserModel(imageUrl: ''.randomSquareImage, avatarUrl: ''.customProfileImage))),
              child: Card(
                child: index.isEven ? Image.network(''.randomSquareImage) : Image.network(''.randomImage),
              ),
            );
          },
        ));
  }
}
