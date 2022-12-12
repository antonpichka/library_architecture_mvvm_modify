import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamPostForSuccess
    implements ICloneStreamModelForSuccess<Post,ListPost>
{
  @override
  IStreamModel<Post, ListPost>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<Post,ListPost>(Post.getPostForSuccess,ListPost.success([]));
  }
}