import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamPostFirstBranchOne
    implements IInitializedStreamModel<PostFirstBranchOne,ListPostFirstBranchOne>
{
  @override
  IStreamModel<PostFirstBranchOne,ListPostFirstBranchOne>? initializedStreamModel() {
    return DefaultStreamModel<PostFirstBranchOne,ListPostFirstBranchOne>(PostFirstBranchOne.getPostFirstBranchOneForSuccess,ListPostFirstBranchOne.getListPostFirstBranchOneForSuccess);
  }
}