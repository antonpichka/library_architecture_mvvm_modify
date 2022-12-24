import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class PostFirstBranchOneForMap
    implements IModelForNamedTIP<PostFirstBranchOne,Map<String,dynamic>>
{
  @override
  PostFirstBranchOne? getModelForNamedTIP(Map<String, dynamic>? parameter) {
    return PostFirstBranchOne.success(
        parameter![Post.constParameterId],
        parameter[Post.constParameterTitle],
        parameter[Post.constParameterBody]);
  }
}