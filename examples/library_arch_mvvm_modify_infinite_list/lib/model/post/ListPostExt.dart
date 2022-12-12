import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';

class ListPostExt
    extends ListPost
{
  ListPostExt.success(super.list) : super.success();
  ListPostExt.exception(super.exception) : super.exception();
}