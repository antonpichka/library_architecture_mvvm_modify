import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostExt.dart';

class ListPostExt<T extends PostExt>
    extends ListPost<T>
{
  ListPostExt.success(super.list) : super.success();
  ListPostExt.exception(super.exception) : super.exception();
}