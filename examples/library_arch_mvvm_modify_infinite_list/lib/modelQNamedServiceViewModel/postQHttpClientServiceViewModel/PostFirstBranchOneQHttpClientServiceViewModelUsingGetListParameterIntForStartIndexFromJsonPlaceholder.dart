import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:meta/meta.dart';

class PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<
        T extends PostFirstBranchOne, Y extends ListPostFirstBranchOne<T>>
    extends PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<
        T, Y> {
  @protected
  @override
  Y? getListPostFromBaseException(BaseException? baseException) {
    return ListPostFirstBranchOne.exception(baseException!) as Y?;
  }

  @protected
  @override
  Y? getListPostFromObject(Object? object) {
    final list = object as List;
    final listPostFirstBranchOne = list.map((dynamic json) {
      final map = json as Map<String, dynamic>;
      return PostFirstBranchOne.fromMap(map);
    }).toList();
    return ListPostFirstBranchOne.success(listPostFirstBranchOne) as Y?;
  }
}
