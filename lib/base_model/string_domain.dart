import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class StringDomain extends BaseModelDomain<StringDomain> {
  String field;

  StringDomain(this.field) : super('');

  @override
  StringDomain cloneObject() {
    return StringDomain(field);
  }

  static StringDomain get getDefaultStringDomain => StringDomain(
      ""
  );
}