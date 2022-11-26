import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';

class CircleAvatarWidget
    extends StatelessWidget
{
  final User _user;

  CircleAvatarWidget(this._user);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 48.0,
      backgroundImage: _user.isNotEqualsNullParameterPhoto()
          ? NetworkImage(_user.photo)
          : null,
      child: _user.isEqualsNullParameterPhoto()
          ? const Icon(Icons.person_outline, size: 48.0)
          : null,
    );
  }

}