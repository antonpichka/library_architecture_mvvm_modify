import 'dart:convert';

import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceDataSource/namedService/HttpClientService.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_list_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T extends Post,Y extends ListPost<T>>
    implements GetListModelFromNamedServiceParameterNamedDataSource<Y,IntTypeParameter>
{
  final _httpClientService = HttpClientService();
  final IModelForNamedTIP<T,Map<String,dynamic>> _iModelForMapTIP;
  final IListModelForNamedTIP<Y,List<T>> _iListPostForArrayListPostTIP;
  final IListModelForNamedTIP<Y,NetworkException> _iListPostForNetworkExceptionTIP;
  final IListModelForNamedTIP<Y,LocalException> _iListPostForStringGoalLocalExceptionTIP;

  PostQHttpClientServiceDataSourceUsingGetListParameterIntForStartIndexFromJsonPlaceholder(this._iModelForMapTIP, this._iListPostForArrayListPostTIP, this._iListPostForNetworkExceptionTIP, this._iListPostForStringGoalLocalExceptionTIP);

  @override
  Future<Y> getListModelFromNamedServiceParameterNamed(
      IntTypeParameter? int)
  async {
    try {
      final response = await _httpClientService
          .getHttpClientSingleton
          ?.getHttpClient
          ?.get(Uri.https(constUrlJsonPlaceholderTypicodeCom, Post.constPostsUrl, <String, String>{'_start': '${int?.parameter}', '_limit': '20'}))
          .timeout(Duration(seconds: 5));
      if(response?.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,response!.statusCode);
      }
      final body = json.decode(response!.body) as List;
      List<T> listPost = body.map((dynamic json) {
        final map = json as Map<String,dynamic>;
        return _iModelForMapTIP.getModelForNamedTIP(map);
      }).toList();
      return _iListPostForArrayListPostTIP.getListModelForNamedTIP(listPost);
    } on NetworkException catch(e) {
      return _iListPostForNetworkExceptionTIP.getListModelForNamedTIP(e);
    } catch(e) {
      return _iListPostForStringGoalLocalExceptionTIP.getListModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}