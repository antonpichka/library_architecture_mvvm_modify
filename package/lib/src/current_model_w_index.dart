import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// The purpose of this class is to serve the class 'BaseModelWNamedWNamedWNamedIterator'
/// Where to use ? - use in 'BaseModelWNamedWNamedWNamedIterator' class
@immutable
final class CurrentModelWIndex<T extends BaseModel> {
  /// This is a 'currentModel'
  /// Where to use ? - use in 'BaseModelWNamedWNamedWNamedIterator' class
  final T currentModel;

  /// This is an 'index' and is needed for the list
  /// Where to use ? - use in 'BaseModelWNamedWNamedWNamedIterator' class
  final int index;

  /// Initialize the parameters 'currentModel', 'index'
  /// Where to use ? - use in 'BaseModelWNamedWNamedWNamedIterator' class
  const CurrentModelWIndex(this.currentModel, this.index);
}
