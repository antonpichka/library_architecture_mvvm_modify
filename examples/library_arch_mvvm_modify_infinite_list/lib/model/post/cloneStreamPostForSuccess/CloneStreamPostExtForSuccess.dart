import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostExt.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostExt.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamPostExtForSuccess
    implements ICloneStreamModelForSuccess<PostExt,ListPostExt>
{
  @override
  IStreamModel<PostExt, ListPostExt>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<PostExt,ListPostExt>(PostExt.getPostExtForSuccess,ListPostExt.success([]));
  }
}