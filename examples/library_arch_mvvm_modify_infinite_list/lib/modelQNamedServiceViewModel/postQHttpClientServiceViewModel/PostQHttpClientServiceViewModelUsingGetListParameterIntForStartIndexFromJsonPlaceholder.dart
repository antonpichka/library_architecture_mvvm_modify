import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceDataSource/postQHttpClientServiceDataSource/PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/PostQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_list_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T extends Post,Y extends ListPost>
    extends PostQNamedServiceViewModel<T,Y,PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder>
{
  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder(IModelForNamedTIP<T,Map<String,dynamic>> iModelForMapTIP,IListModelForNamedTIP<Y,List<T>> iListPostForArrayListPostTIP, IListModelForNamedTIP<Y,NetworkException> iListPostForNetworkExceptionTIP,IListModelForNamedTIP<Y,LocalException> iListPostForLocalExceptionTIP,ICloneModelForSuccess<T> iCloneModelForSuccess,ICloneListModelForSuccess<Y> iCloneListModelForSuccess,ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess)
      : super.thereIsDataSource(PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder(iModelForMapTIP,iListPostForArrayListPostTIP,iListPostForNetworkExceptionTIP,iListPostForLocalExceptionTIP),iCloneModelForSuccess,iCloneListModelForSuccess,iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Stream<Y>? get getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return getStreamListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }

  Y? get getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return getListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }

  Future<Y?> getListPostFromHttpClientServiceParameterInt(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedServiceParameterNamed<IntTypeParameter>(intTypeParameter);
  }

  Future<Y?> getListPostFromHttpClientServiceParameterIntAndSetListPost(
      IntTypeParameter intTypeParameter)
  {
    return getListModelFromNamedServiceParameterNamedAndSetListModel<IntTypeParameter>(intTypeParameter);
  }

  void notifyStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder() {
    notifyStreamListModel(EnumBaseModelAndBaseListModelVM.getListModelFromNamedServiceParameterNamed);
  }
}