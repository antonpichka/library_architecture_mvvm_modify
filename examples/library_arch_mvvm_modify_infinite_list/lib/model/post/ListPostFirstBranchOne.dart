import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';

class ListPostFirstBranchOne<T extends PostFirstBranchOne>
    extends ListPost<T>
{
  ListPostFirstBranchOne.success(super.list) : super.success();
  ListPostFirstBranchOne.exception(super.exception) : super.exception();
}