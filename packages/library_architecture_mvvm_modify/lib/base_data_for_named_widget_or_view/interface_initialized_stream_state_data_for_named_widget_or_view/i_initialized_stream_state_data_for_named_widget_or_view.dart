import 'package:library_architecture_mvvm_modify/base_data_for_named_widget_or_view/base_data_for_named_widget_or_view.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_state_data_for_named_widget_or_view/i_stream_state_data_for_named_widget_or_view.dart';

///  This class is designed to initialize "IStreamStateDataForNamedWidgetOrView"
abstract interface class IInitializedStreamStateDataForNamedWidgetOrView<
    T extends BaseDataForNamedWidgetOrView> {
  // Default class: return DefaultStreamStateDataForNamedWidgetOrView<DataForAccountWidget>(DataForAccountWidget.success());
  IStreamStateDataForNamedWidgetOrView<T>
      get getStreamStateDataForNamedWidgetOrView;
}
