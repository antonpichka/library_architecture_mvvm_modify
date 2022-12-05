import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceDataSource/postQHttpClientServiceDataSource/PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/PostQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/namedService/HttpClientService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder
    extends PostQNamedServiceViewModel<PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder>
{
  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder() : super.thereIsDataSource(PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder(HttpClientService()));

  @override
  Object thisClass() {
    return this;
  }

  Stream<ListPost>? get getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return getStreamListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }

  ListPost? get getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return getListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }

  Future<ListPost?> getListPostFromHttpClientServiceParameterInt(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedServiceParameterNamed<IntTypeParameter>(intTypeParameter);
  }

  Future<ListPost?> getListPostFromHttpClientServiceParameterIntAndSetListPost(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedServiceParameterNamedAndSetListModel<IntTypeParameter>(intTypeParameter);
  }

  void notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder() {
    notifyStreamListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }
}