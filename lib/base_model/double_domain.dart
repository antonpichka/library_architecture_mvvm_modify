import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class DoubleDomain extends BaseModelDomain<DoubleDomain> {
  double field;

  DoubleDomain(this.field) : super('');

  @override
  DoubleDomain cloneObject() {
    return DoubleDomain(field);
  }

  static DoubleDomain get getDefaultDoubleDomain => DoubleDomain(
      0.0
  );
}