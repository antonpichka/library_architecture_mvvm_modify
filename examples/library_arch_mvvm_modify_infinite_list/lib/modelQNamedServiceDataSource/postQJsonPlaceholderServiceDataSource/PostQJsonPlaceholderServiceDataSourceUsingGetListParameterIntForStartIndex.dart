import 'dart:convert';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/namedService/JsonPlaceholderService.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_list_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostQJsonPlaceholderServiceDataSourceUsingGetListParameterIntForStartIndex
    implements GetListModelFromNamedServiceParameterNamedDataSource<ListPost,IntTypeParameter>
{
  final JsonPlaceholderService _jsonPlaceholderService;

  PostQJsonPlaceholderServiceDataSourceUsingGetListParameterIntForStartIndex(this._jsonPlaceholderService);

  @override
  Future<ListPost> getListModelFromNamedServiceParameterNamed(
      IntTypeParameter int)
  async {
    try {
      final response = await _jsonPlaceholderService
          .getHttpClientSingleton
          .getHttpClient
          .get(Uri.https(constUrlJsonPlaceholderTypicodeCom, Post.constPostsUrl, <String, String>{'_start': '${int.getParameter}', '_limit': '20'}))
          .timeout(Duration(seconds: 5));;
      if(response.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,response.statusCode);
      }
      final body = json.decode(response.body) as List;
      List<Post> listPost = body.map((dynamic json) {
        final map = json as Map<String,dynamic>;
        return Post.fromMap(map);
      }).toList();
      return ListPost.success(listPost);
    } on NetworkException catch(e) {
      return ListPost.exception(e);
    } catch(e) {
      return ListPost.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}