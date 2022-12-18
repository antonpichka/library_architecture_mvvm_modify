import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';

class CircleAvatarWidget
    extends StatelessWidget
{
  @protected
  final User? user;

  const CircleAvatarWidget(this.user);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 48.0,
      backgroundImage: buildBackgroundImage(context),
      child: buildChild()
    );
  }

  @protected
  ImageProvider<Object>? buildBackgroundImage(BuildContext context) {
    return user?.isOneParametersNamedForCircleAvatarWidget() ?? false
        ? NetworkImage(user?.getOneParametersNamedForCircleAvatarWidget ?? "")
        : null;
  }

  @protected
  Widget? buildChild() {
    return user?.isTwoParametersNamedForCircleAvatarWidget() ?? false
        ? const Icon(Icons.person_outline, size: 48.0)
        : null;
  }
}