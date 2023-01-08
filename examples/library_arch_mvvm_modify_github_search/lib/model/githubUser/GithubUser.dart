import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class GithubUser
    extends BaseModel
{
  String? login;
  String? avatarUrl;

  GithubUser.success(this.login,this.avatarUrl) : super.success(login);
  GithubUser.exception(super.exception) : super.exception();

  static GithubUser get getGithubUserForSuccess => GithubUser.success("","");
  static const constParameterLogin = "login";
  static const constParameterAvatarUrl = "avatar_url";
}