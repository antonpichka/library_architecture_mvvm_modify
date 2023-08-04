import 'package:library_architecture_mvvm_modify/base_data_for_named_widget_or_view/base_data_for_named_widget_or_view.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';

/// This class provides access to the model and stream, and resides in the "ModelQThereIsStateModel" class.
/// This class must be implemented, and in the implemented class,
/// the DataForNamedWidgetOrView and stream controllers must be a field and change state if necessary
abstract interface class IStreamStateDataForNamedWidgetOrView<T extends BaseDataForNamedWidgetOrView>
    implements IDispose
{
  /// Get a stream DataForNamedWidgetOrView
  Stream<T?> get getStreamDataForNamedWidgetOrView;

  /// Get a DataForNamedWidgetOrView
  T? get getDataForNamedWidgetOrView;

  /// Set a DataForNamedWidgetOrView
  set setDataForNamedWidgetOrView(T? dataForNamedWidgetOrView);

  /// Notify stream DataForNamedWidgetOrView
  void notifyStreamDataForNamedWidgetOrView();
}
