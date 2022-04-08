import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

/* USING TO VIEW_MODEL CLASSES */
class ReadyIteratorForBaseListModelLNDatabaseFVM
{
 static Response<BaseTypeParameter,BaseException> callToMethodSetIteratorForListModelLNDatabaseAndSetListModelLNDatabaseUsingAnIteratorFVM(
      BaseListModelDomain baseListModelDomain,
      EnumTypeParameter enumTypeParameter,
      Map<Enum,BaseIterator> mapEnumAndBaseIterator)
  {
    var response = baseListModelDomain.selectIteratorViaEnumTypeParameter(
        enumTypeParameter,
        mapEnumAndBaseIterator
    );
    if(response.isSuccessResponse) {
      return Response.success(BoolTypeParameter(true));
    } else {
      return Response.exception(response.getException);
    }
  }
}