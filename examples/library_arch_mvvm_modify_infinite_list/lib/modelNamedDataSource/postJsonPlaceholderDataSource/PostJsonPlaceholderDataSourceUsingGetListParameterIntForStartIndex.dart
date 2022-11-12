import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/ListPostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/utility.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/get_list_model_from_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex
    implements GetListModelFromNamedParameterNamedDataSource<ListPostJsonPlaceholder,IntTypeParameter>
{
  final http.Client _httpClient;

  PostJsonPlaceholderDataSourceUsingGetListParameterIntForStartIndex(this._httpClient);

  @override
  Future<ListPostJsonPlaceholder> getListModelFromNamedParameterNamed(
      IntTypeParameter int)
  async {
    try {
      final response = await _httpClient
          .get(Uri.https(constUrlJsonPlaceholderTypicodeCom, PostJsonPlaceholder.constPostsUrl, <String, String>{'_start': '${int.getParameter}', '_limit': '20'}))
          .timeout(Duration(seconds: 5));;
      if(response.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,response.statusCode);
      }
      final body = json.decode(response.body) as List;
      List<PostJsonPlaceholder> listPostJsonPlaceholder = body.map((dynamic json) {
        final map = json as Map<String,dynamic>;
        return PostJsonPlaceholder.fromMap(map);
      }).toList();
      return ListPostJsonPlaceholder.success(listPostJsonPlaceholder);
    } on NetworkException catch(e) {
      return ListPostJsonPlaceholder.exception(e);
    } catch(e) {
      return ListPostJsonPlaceholder.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}