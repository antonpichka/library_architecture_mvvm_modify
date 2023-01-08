import 'package:library_arch_mvvm_modify_github_search/model/githubUser/GithubUser.dart';
import 'package:library_arch_mvvm_modify_github_search/model/githubUser/ListGithubUser.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_stream_model_for_success/i_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class StreamGithubUserForSuccess
    implements IStreamModelForSuccess<GithubUser,ListGithubUser<GithubUser>>
{
  @override
  IStreamModel<GithubUser, ListGithubUser<GithubUser>>? streamModelForSuccess() {
    return DefaultStreamModel<GithubUser,ListGithubUser>(GithubUser.getGithubUserForSuccess,ListGithubUser.success([]));
  }
}