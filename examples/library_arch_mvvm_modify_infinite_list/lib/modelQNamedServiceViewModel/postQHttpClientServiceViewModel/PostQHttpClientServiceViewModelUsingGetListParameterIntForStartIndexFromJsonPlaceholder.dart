import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceDataSource/postQHttpClientServiceDataSource/PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/PostQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T extends Post,Y extends ListPost<T>>
    extends PostQNamedServiceViewModel<T,Y,PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T,Y>>
{
  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess,IModelForNamedTIP<T,Map<String,dynamic>> iModelForMapTIP,IListModelForNamedTIP<Y,List<T>> iListPostForArrayListPostTIP, IListModelForNamedTIP<Y,NetworkException> iListPostForNetworkExceptionTIP,IListModelForNamedTIP<Y,LocalException> iListPostForLocalExceptionTIP)
      : super.thereIsDataSource(PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder(iModelForMapTIP,iListPostForArrayListPostTIP,iListPostForNetworkExceptionTIP,iListPostForLocalExceptionTIP),iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Stream<Y>? get getStreamListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return getStreamListModel(EnumForIStreamModelVM.getListParameterNamed);
  }

  Y? get getListPostUsingGetListParameterIntForStartIndexFromJsonPlaceholder {
    return getListModel(EnumForIStreamModelVM.getListParameterNamed);
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
    notifyStreamListModel(EnumForIStreamModelVM.getListParameterNamed);
  }
}