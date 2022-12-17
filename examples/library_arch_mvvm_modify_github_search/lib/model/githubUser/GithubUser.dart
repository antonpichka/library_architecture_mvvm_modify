import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class GithubUser
    extends BaseModel
{
  String? _login;
  String? _avatarUrl;

  GithubUser.success(this._login,this._avatarUrl) : super.success(_login);
  GithubUser.exception(super.exception) : super.exception();

  static GithubUser get getGithubUserForSuccess => GithubUser.success("","");
  static const constParameterLogin = "login";
  static const constParameterAvatarUrl = "avatar_url";

  @protected
  @nonVirtual
  String? get getParameterLogin => _login;
  @protected
  @nonVirtual
  String? get getParameterAvatarUrl => _avatarUrl;
  String? get getOneParametersNamedForSearchBodyWidget => _avatarUrl;

  @protected
  @nonVirtual
  set setParameterLogin(String login) => _login = login;
  @protected
  @nonVirtual
  set setParameterAvatarUrl(String avatarUrl) => _avatarUrl = avatarUrl;
}