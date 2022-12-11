import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_list_model_for_success.dart';

class CloneListPostForSuccess
    implements ICloneListModelForSuccess<ListPost>
{
  @override
  ListPost? cloneListModelForSuccess(
      ListPost? listModel)
  {
    return ListPost.success(listModel?.getParameterList);
  }
}