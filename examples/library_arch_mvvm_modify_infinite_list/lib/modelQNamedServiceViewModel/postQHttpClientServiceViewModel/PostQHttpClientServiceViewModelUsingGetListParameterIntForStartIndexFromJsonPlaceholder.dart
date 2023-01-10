import 'dart:convert';
import 'dart:core';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/namedService/HttpClientService.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:meta/meta.dart';

class PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<T extends Post,Y extends ListPost<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements GetListModelFromNamedServiceParameterNamedDataSource<Y,int>
{
  @protected
  final httpClientService = HttpClientService();

  Future<Y?> getListPostFromHttpClientServiceParameterInt(int parameter) {
    return getListModelFromNamedServiceParameterNamed<int>(parameter);
  }

  @nonVirtual
  @override
  Object get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Y?> getListModelFromNamedServiceParameterNamedDS(int? parameter)
  async {
    try {
      final response = await httpClientService
          .getHttpClientSingleton
          ?.getHttpClient
          ?.get(Uri.https(constUrlJsonPlaceholderTypicodeCom, "/posts", <String, String>{'_start': '$parameter', '_limit': '20'}))
          .timeout(const Duration(seconds: 5));
      if(response?.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,response!.statusCode);
      }
      final body = json.decode(response!.body) as List;
      return getListPostFromObject(body);
    } on NetworkException catch(e) {
      return getListPostFromBaseException(e);
    } catch(e) {
      return getListPostFromBaseException(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  Y? getListPostFromObject(Object object) {
    final list = object as List;
    final listPost = list.map((dynamic json) {
      final map = json as Map<String,dynamic>;
      return Post.success(
          map[Post.constParameterId],
          map[Post.constParameterTitle],
          map[Post.constParameterBody]);
    }).toList();
    return ListPost.success(listPost) as Y?;
  }

  @protected
  Y? getListPostFromBaseException(BaseException baseException) {
    return ListPost.exception(baseException) as Y?;
  }
}