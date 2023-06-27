import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

base class GithubUser extends BaseModel {
  static const String constParameterLogin = "login";
  static const String constParameterAvatarUrl = "avatar_url";

  String? login;
  String? avatarUrl;

  GithubUser.success(this.login, this.avatarUrl) : super.success(login);
  GithubUser.exception(super.exception) : super.exception();

  static GithubUser get getGithubUserForSuccess => GithubUser.success("", "");
}
