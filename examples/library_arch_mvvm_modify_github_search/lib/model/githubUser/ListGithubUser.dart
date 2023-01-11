import 'package:library_arch_mvvm_modify_github_search/model/githubUser/GithubUser.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListGithubUser<T extends GithubUser>
    extends BaseListModel<T>
{
  ListGithubUser.success(super.listModel) : super.success();
  ListGithubUser.exception(super.exception) : super.exception();

  static ListGithubUser get getListGithubUserForSuccess => ListGithubUser.success([]);
}