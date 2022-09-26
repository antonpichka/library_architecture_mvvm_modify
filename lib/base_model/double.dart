import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class Double
    extends BaseModel
{
  double field;

  Double(this.field) : super('');

  static Double get getDefaultDouble => Double(0.0);
}