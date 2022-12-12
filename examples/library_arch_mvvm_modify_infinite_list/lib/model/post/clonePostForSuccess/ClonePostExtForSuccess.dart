import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostExt.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostExt.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';

class ClonePostExtForSuccess
    implements ICloneModelForSuccess<PostExt,ListPostExt>
{
  @override
  PostExt? cloneModelForSuccess(PostExt? model) {
    return PostExt.success(
        model?.getParameterId,
        model?.getParameterTitle,
        model?.getParameterBody);
  }

  @override
  ListPostExt? cloneListModelForSuccess(ListPostExt? listModel) {
    return ListPostExt.success(listModel?.getParameterList);
  }

}