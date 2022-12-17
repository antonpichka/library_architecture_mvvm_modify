import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamPostFirstBranchOneForSuccess
    implements ICloneStreamModelForSuccess<PostFirstBranchOne,ListPostFirstBranchOne<PostFirstBranchOne>>
{
  @override
  IStreamModel<PostFirstBranchOne,ListPostFirstBranchOne<PostFirstBranchOne>>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<PostFirstBranchOne,ListPostFirstBranchOne<PostFirstBranchOne>>(PostFirstBranchOne.getPostFirstBranchOneForSuccess,ListPostFirstBranchOne.success([]));
  }
}