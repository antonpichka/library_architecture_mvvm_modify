/// This class is necessary to release resources, and it is in such classes:
/// "BaseModelQThereIsStateViewModel", "BaseNamedViewListViewModel", "IStreamModel"
abstract class IDispose {
  void dispose();
}
