import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceDataSource/postQJsonPlaceholderServiceDataSource/PostQJsonPlaceholderServiceDataSourceUsingGetListParameterIntForStartIndex.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/PostQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/namedService/JsonPlaceholderService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
    extends PostQNamedServiceViewModel
{
  PostQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex(JsonPlaceholderService jsonPlaceholderService) : super.thereIsDataSource(PostQJsonPlaceholderServiceDataSourceUsingGetListParameterIntForStartIndex(jsonPlaceholderService));

  @override
  Object thisClass() {
    return this;
  }

  Stream<ListPost> get getStreamListPostUsingGetListParameterIntForStartIndex {
    return getStreamListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }

  ListPost get getListPostUsingGetListParameterIntForStartIndex {
    return getListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }

  Future<ListPost> getListPostFromJsonPlaceholderServiceParameterInt(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedServiceParameterNamed(intTypeParameter);
  }

  Future<ListPost> getListPostFromJsonPlaceholderServiceParameterIntAndSetListPost(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedServiceParameterNamedAndSetListModel(intTypeParameter);
  }

  void notifyStreamListPostUsingGetListParameterIntForStartIndex() {
    notifyStreamListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }
}