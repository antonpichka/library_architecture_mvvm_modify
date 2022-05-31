import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

class DoubleDomain extends BaseModelDomain {
  double field;

  DoubleDomain(this.field) : super('');

  static DoubleDomain get getDefaultDoubleDomain => DoubleDomain(
      0.0
  );
}