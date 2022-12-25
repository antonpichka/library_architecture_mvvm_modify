import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceDataSource/postQHttpClientServiceDataSource/PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/PostQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T extends Post,Y extends ListPost<T>>
    extends PostQNamedServiceViewModel<T,Y>
{
  final PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T,Y> _dataSource;

  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder(
      super.iCloneStreamModelForSuccess,
      IModelForNamedTIP<T,Map<String,dynamic>> iModelForMapTIP,
      IListModelForNamedTIP<Y,List<T>> iListPostForArrayListPostTIP,
      IListModelForNamedTIP<Y,NetworkException> iListPostForNetworkExceptionTIP,
      IListModelForNamedTIP<Y,LocalException> iListPostForLocalExceptionTIP)
      : _dataSource = PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder(iModelForMapTIP,iListPostForArrayListPostTIP,iListPostForNetworkExceptionTIP,iListPostForLocalExceptionTIP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T, Y>? get getModelQNamedServiceDataSource => _dataSource;

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