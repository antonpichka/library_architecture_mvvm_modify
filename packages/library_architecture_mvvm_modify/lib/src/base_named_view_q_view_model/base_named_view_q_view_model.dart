import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

// OperationQQModelQNamedServiceQNP||ParameterNamed(QQForNamedQQWhereNamed)
// NamedUtility

@immutable
abstract base class BaseNamedViewQViewModel<T extends BaseDataForNamed<Enum>,
    Y extends BaseNamedStreamAndStateQDataForNamed<T>> implements IDispose {
  @protected
  final Y namedStreamAndStateQDataForNamed;

  const BaseNamedViewQViewModel(this.namedStreamAndStateQDataForNamed);

  Future<String> init();

  @override
  void dispose() {
    namedStreamAndStateQDataForNamed.dispose();
  }

  @nonVirtual
  Stream<T> get getStreamDataForNamed {
    return namedStreamAndStateQDataForNamed.getStreamDataForNamed;
  }

  @nonVirtual
  T get getDataForNamed {
    return namedStreamAndStateQDataForNamed.getDataForNamed;
  }

  @nonVirtual
  void notifyStreamDataForNamed() {
    namedStreamAndStateQDataForNamed.notifyStreamDataForNamed();
  }
}
