import 'dart:async';
import 'package:meta/meta.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

@immutable
base class BaseDataForNamedQThereIsStreamStateViewModel<
    T extends BaseDataForNamed> implements IDispose {
  final BaseNamedStreamStateQDataForNamed<T> _baseNamedStreamStateQDataForNamed;

  BaseDataForNamedQThereIsStreamStateViewModel(
      BaseInitializedNamedStreamStateQDataForNamed<T>
          baseInitializedNamedStreamStateQDataForNamed)
      : _baseNamedStreamStateQDataForNamed =
            baseInitializedNamedStreamStateQDataForNamed
                .getNamedStreamStateQDataForNamed;

  @override
  void dispose() {
    _baseNamedStreamStateQDataForNamed.dispose();
  }

  @nonVirtual
  Stream<T> get getStreamDataForNamed {
    return _baseNamedStreamStateQDataForNamed.getStreamDataForNamed;
  }

  @nonVirtual
  T get getDataForNamed {
    return _baseNamedStreamStateQDataForNamed.getDataForNamed;
  }

  @nonVirtual
  void notifyStreamDataForNamed() {
    _baseNamedStreamStateQDataForNamed.notifyStreamDataForNamed();
  }

  @protected
  @nonVirtual
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed {
    return _baseNamedStreamStateQDataForNamed;
  }
}
