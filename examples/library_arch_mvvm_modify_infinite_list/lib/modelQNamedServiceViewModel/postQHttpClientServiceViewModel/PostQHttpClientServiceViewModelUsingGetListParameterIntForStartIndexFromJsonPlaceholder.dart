import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceDataSource/postQHttpClientServiceDataSource/PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';
import 'package:meta/meta.dart';

class PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T extends Post,Y extends ListPost<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  final PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T,Y> _dataSource;

  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder(
      IModelForNamedTIP<T,Map<String,dynamic>> iModelForMapTIP,
      IListModelForNamedTIP<Y,List<T>> iListPostForArrayListPostTIP,
      IListModelForNamedTIP<Y,NetworkException> iListPostForNetworkExceptionTIP,
      IListModelForNamedTIP<Y,LocalException> iListPostForLocalExceptionTIP)
      : _dataSource = PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder(
      iModelForMapTIP,
      iListPostForArrayListPostTIP,
      iListPostForNetworkExceptionTIP,
      iListPostForLocalExceptionTIP);

  @protected
  @override
  PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T, Y>? get getModelQNamedServiceDataSource => _dataSource;

  Future<Y?> getListPostFromHttpClientServiceParameterInt(IntTypeParameter intTypeParameter) {
    return getListModelFromNamedServiceParameterNamed<IntTypeParameter>(intTypeParameter);
  }
}