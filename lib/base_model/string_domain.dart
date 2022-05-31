import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class StringDomain extends BaseModelDomain {
  String field;

  StringDomain(this.field) : super('');

  static StringDomain get getDefaultStringDomain => StringDomain(
      ""
  );
}