import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';

class ClonePostForSuccess
    implements ICloneModelForSuccess<Post>
{
  @override
  Post? cloneModelForSuccess(
      Post? model)
  {
    return Post.success(
        model?.getParameterId,
        model?.getParameterTitle,
        model?.getParameterBody);
  }
}