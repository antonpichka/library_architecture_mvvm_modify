import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

/// This class is designed to validate the model and calculate it before passing it to the data source method.
/// There are 2 generics types:
/// 1 generic type returns the correct result, and must match the returned data source generic.
/// 2 generic type, sends additional data for verification and calculation, they are optional, and you can assign null there
/// An example of a class name in a real project: GetListMovieFromSqfliteServiceNPFBDSUsingGetListNP
/// NP - no parameter (with such an SQL query (SELECT * FROM movies;)
/// Using - is specified because it is also specified in the ModelQNamedServiceViewModel file name, and this binds fbds to this object, by file name.
/// This is done so as not to get confused where and which fbds is used
abstract base class GetListModelFromNamedServiceNPFBDS<X extends BaseListModel,
    C extends Object> {
  X? getListModelFromNamedServiceNP(C? parameterForFBDS);
}
