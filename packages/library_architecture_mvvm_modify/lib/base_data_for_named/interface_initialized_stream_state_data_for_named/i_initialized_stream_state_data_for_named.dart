import 'package:library_architecture_mvvm_modify/base_data_for_named/base_data_for_named.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_state_data_for_named/i_stream_state_data_for_named.dart';

abstract interface class IInitializedStreamStateDataForNamed<
    T extends BaseDataForNamed> {
  IStreamStateDataForNamed<T>
      get getStreamStateDataForNamed;
}
