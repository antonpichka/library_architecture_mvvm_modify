import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/ListPostForInfiniteList.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteList.dart';
import 'package:library_architecture_mvvm_modify/base_model/default.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_default.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';
import 'package:library_architecture_mvvm_modify/utility/sc_model.dart';

abstract class PostForInfiniteListViewModel
    extends BaseViewModel<PostForInfiniteList,ListPostForInfiniteList,Default<PostForInfiniteList>,ListDefault<ListPostForInfiniteList,Default<PostForInfiniteList>>, Enum>
{
  PostForInfiniteListViewModel.noDataSource(
      List<EnumBaseModelAndBaseListModelVM> listEnumBaseModelVM)
      : super.noDataSource(
      listEnumBaseModelVM,
          ()=> SCModel(DefaultStreamController<PostForInfiniteList>(),PostForInfiniteList.getDefaultPostForInfiniteList,ListPostForInfiniteList([])));

  @override
  PostForInfiniteList cloneModel(
      PostForInfiniteList model)
  {
    return PostForInfiniteList(
        model.listPost,
        model.hasReachedMax,
        model.enumWhatIsTheException);
  }
}