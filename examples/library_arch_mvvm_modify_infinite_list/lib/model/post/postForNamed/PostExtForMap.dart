import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostExt.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class PostExtForMap
    implements IModelForNamedTIP<PostExt,Map<String,dynamic>>
{
  @override
  PostExt getModelForNamedTIP(Map<String, dynamic> parameter) {
    return PostExt.success(
        parameter[Post.constParameterId],
        parameter[Post.constParameterTitle],
        parameter[Post.constParameterBody]);
  }
}