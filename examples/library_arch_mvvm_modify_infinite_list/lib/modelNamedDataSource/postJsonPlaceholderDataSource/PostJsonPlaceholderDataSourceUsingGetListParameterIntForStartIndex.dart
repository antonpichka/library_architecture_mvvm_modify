import 'dart:convert';
import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/customDataSource/DefaultHttpClientDataSource.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/int_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

class PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex
    extends DefaultHttpClientDataSource
    implements GetListModelFromNamedParameterNamedDataSource<ListPostJsonPlaceholder,IntTypeParameter>
{
  static final PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex db =
  PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex._();

  PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex._();

  @override
  Future<Response<ListPostJsonPlaceholder, BaseException>> getListModelFromNamedParameterNamed(
      IntTypeParameter int)
  async {
    try {
      final response = await getHttpClient.get(
        Uri.https(
          'jsonplaceholder.typicode.com',
          '/posts',
          <String, String>{'_start': '${int.getParameter}', '_limit': '20'},
        ),
      );
      if(response.statusCode != 200) {
        return throw NetworkException.fromStatusCode(this,response.statusCode);
      }
      final body = json.decode(response.body) as List;
      List<PostJsonPlaceholder> listPostJsonPlaceholderDatabase = body.map((dynamic json) {
        final map = json as Map<String,dynamic>;
        return PostJsonPlaceholder.fromMap(map);
      }).toList();
      return Response.success(ListPostJsonPlaceholder(listPostJsonPlaceholderDatabase));
    } on NetworkException catch(e) {
      return Response.exception(e);
    } catch(e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}