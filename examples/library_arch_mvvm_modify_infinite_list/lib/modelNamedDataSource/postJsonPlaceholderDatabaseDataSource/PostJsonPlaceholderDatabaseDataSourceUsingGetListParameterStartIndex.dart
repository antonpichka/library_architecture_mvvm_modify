import 'dart:convert';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostJsonPlaceholderDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostJsonPlaceholderDatabase.dart';
import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/get_list_model_from_named_database_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/int_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';
import 'package:http/http.dart' as http;

class PostJsonPlaceholderDatabaseDataSourceUsingGetListParameterStartIndex
    implements GetListModelFromNamedDatabaseParameterNamedDataSource<ListPostJsonPlaceholderDatabase,IntTypeParameter>
{
  static final PostJsonPlaceholderDatabaseDataSourceUsingGetListParameterStartIndex db = PostJsonPlaceholderDatabaseDataSourceUsingGetListParameterStartIndex._();

  PostJsonPlaceholderDatabaseDataSourceUsingGetListParameterStartIndex._();

  @override
  Future<Response<ListPostJsonPlaceholderDatabase, BaseException>> getListModelFromNamedDatabaseParameterNamed(
      IntTypeParameter startIndex)
  async {
    try {
      final response = await http.get(
        Uri.https(
          'jsonplaceholder.typicode.com',
          '/posts',
          <String, String>{'_start': '${startIndex.getParameter}', '_limit': '20'},
        ),
      );
      if(response.statusCode != 200) {
        throw NetworkException.byStatusCode(this,response.statusCode);
      }
      final body = json.decode(response.body) as List;
      List<PostJsonPlaceholderDatabase> listPostJsonPlaceholderDatabase = body.map((dynamic json) {
        final map = json as Map<String,dynamic>;
        return PostJsonPlaceholderDatabase.fromMap(map);
      }).toList();
      return Response.success(ListPostJsonPlaceholderDatabase(listPostJsonPlaceholderDatabase));
    } on NetworkException catch(e) {
      return Response.exception(e);
    } catch(e) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}