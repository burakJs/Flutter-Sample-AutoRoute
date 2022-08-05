import 'package:flutter/material.dart';
import 'package:sample_auto_route/dashboard/user/model/user_model.dart';

class UserDetailView extends StatefulWidget {
  const UserDetailView({super.key, required this.model});
  final UserModel model;
  @override
  State<UserDetailView> createState() => _UserDetailViewState();
}

class _UserDetailViewState extends State<UserDetailView> {
  late UserModel _model;

  @override
  void initState() {
    super.initState();
    _model = widget.model;
  }

  @override
  void didUpdateWidget(covariant UserDetailView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      updateModel();
    }
  }

  void updateModel() {
    setState(() {
      _model = widget.model;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(_model.avatarUrl),
      ),
      body: Center(child: Text(_model.imageUrl)),
    );
  }
}
