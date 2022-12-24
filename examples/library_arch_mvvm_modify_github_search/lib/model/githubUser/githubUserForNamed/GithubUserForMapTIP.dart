import 'package:library_arch_mvvm_modify_github_search/model/githubUser/GithubUser.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class GithubUserForMapTIP
    implements IModelForNamedTIP<GithubUser,Map<String,dynamic>>
{
  @override
  GithubUser? getModelForNamedTIP(Map<String,dynamic>? parameter) {
    return GithubUser.success(
        parameter![GithubUser.constParameterLogin] as String,
        parameter[GithubUser.constParameterAvatarUrl] as String);
  }

}