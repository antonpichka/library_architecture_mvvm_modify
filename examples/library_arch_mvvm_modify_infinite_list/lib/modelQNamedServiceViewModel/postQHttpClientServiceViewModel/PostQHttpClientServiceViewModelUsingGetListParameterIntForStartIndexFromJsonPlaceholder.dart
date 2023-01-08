import 'dart:convert';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/namedService/HttpClientService.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';
import 'package:meta/meta.dart';

class PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T extends Post,Y extends ListPost<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements GetListModelFromNamedServiceParameterNamedDataSource<Y,IntTypeParameter>
{
  @protected
  final httpClientService = HttpClientService();
  @protected
  final IModelForNamedTIP<T,Map<String,dynamic>> iModelForMapTIP;
  @protected
  final IListModelForNamedTIP<Y,List<T>> iListPostForArrayListPostTIP;
  @protected
  final IListModelForNamedTIP<Y,NetworkException> iListPostForNetworkExceptionTIP;
  @protected
  final IListModelForNamedTIP<Y,LocalException> iListPostForLocalExceptionTIP;

  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder(
      this.iModelForMapTIP,
      this.iListPostForArrayListPostTIP,
      this.iListPostForNetworkExceptionTIP,
      this.iListPostForLocalExceptionTIP);

  Future<Y?> getListPostFromHttpClientServiceParameterInt(IntTypeParameter intTypeParameter) {
    return getListModelFromNamedServiceParameterNamed<IntTypeParameter>(intTypeParameter);
  }

  @protected
  @override
  Object get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Y?> getListModelFromNamedServiceParameterNamedDS(IntTypeParameter? parameter)
  async {
    try {
      final response = await httpClientService
          .getHttpClientSingleton
          ?.getHttpClient
          ?.get(getUriForGetListModelFromNamedServiceParameterNamed(parameter))
          .timeout(const Duration(seconds: 5));
      if(response?.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,response!.statusCode);
      }
      final body = json.decode(response!.body) as List;
      List<T>? listPost = body.map((dynamic json) {
        final map = json as Map<String,dynamic>;
        return iModelForMapTIP.getModelForNamedTIP(map)!;
      }).toList();
      return iListPostForArrayListPostTIP.getListModelForNamedTIP(listPost);
    } on NetworkException catch(e) {
      return iListPostForNetworkExceptionTIP.getListModelForNamedTIP(e);
    } catch(e) {
      return iListPostForLocalExceptionTIP.getListModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Uri getUriForGetListModelFromNamedServiceParameterNamed(IntTypeParameter? intTypeParameter) {
    return Uri.https(constUrlJsonPlaceholderTypicodeCom, "/posts", <String, String>{'_start': '${intTypeParameter?.parameter}', '_limit': '20'});
  }
}