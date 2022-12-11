import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';

class CircleAvatarWidget<T extends User>
    extends StatelessWidget
{
  final T? _user;

  CircleAvatarWidget(this._user);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 48.0,
      backgroundImage: _user!.isOneParametersNamedForCircleAvatarWidget()
          ? NetworkImage(_user!.photo ?? "")
          : null,
      child: _user!.isTwoParametersNamedForCircleAvatarWidget()
          ? const Icon(Icons.person_outline, size: 48.0)
          : null,
    );
  }

}