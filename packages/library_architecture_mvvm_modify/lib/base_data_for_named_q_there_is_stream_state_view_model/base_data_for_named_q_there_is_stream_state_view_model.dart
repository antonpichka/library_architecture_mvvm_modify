import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_data_for_named/base_data_for_named.dart';
import 'package:library_architecture_mvvm_modify/base_data_for_named/interface_initialized_stream_state_data_for_named/i_initialized_stream_state_data_for_named.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_state_data_for_named/i_stream_state_data_for_named.dart';
import 'package:meta/meta.dart';

abstract base class BaseDataForNamedQThereIsStreamStateViewModel<
    T extends BaseDataForNamed> implements IDispose {
  final IStreamStateDataForNamed<T>
      _iStreamStateDataForNamed;

  BaseDataForNamedQThereIsStreamStateViewModel(
      IInitializedStreamStateDataForNamed<T>
          iInitializedStreamStateDataForNamed)
      : _iStreamStateDataForNamed =
            iInitializedStreamStateDataForNamed
                .getStreamStateDataForNamed;

  @override
  void dispose() {
    _iStreamStateDataForNamed.dispose();
  }

  @nonVirtual
  IStreamStateDataForNamed<T>?
      get getIStreamStateDataForNamed {
    return _iStreamStateDataForNamed;
  }

  @nonVirtual
  Future<T?> get getFutureDataForNamed async {
    return _iStreamStateDataForNamed.getDataForNamed;
  }

  @nonVirtual
  Stream<T?>? get getStreamDataForNamed {
    return _iStreamStateDataForNamed
        .getStreamDataForNamed;
  }

  @nonVirtual
  T? get getDataForNamed {
    return _iStreamStateDataForNamed.getDataForNamed;
  }

  @nonVirtual
  set setDataForNamed(T? dataForNamed) {
    _iStreamStateDataForNamed.setDataForNamed =
        dataForNamed;
  }

  @nonVirtual
  void notifyStreamDataForNamed() {
    _iStreamStateDataForNamed
        .notifyStreamDataForNamed();
  }
}
