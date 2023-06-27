/// This class is necessary to release resources, and it is in such classes:
/// "BaseModelQThereIsStateViewModel", "BaseNamedViewListViewModel", "IStreamModel"
abstract interface class IDispose {
  void dispose();
}
