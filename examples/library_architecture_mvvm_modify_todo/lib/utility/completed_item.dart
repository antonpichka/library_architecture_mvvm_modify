class CompletedItem {
  final String uuId;
  final bool isCompleted;

  CompletedItem(this.uuId, this.isCompleted);

  int get getConverterFromIsCompletedToIntParameterIsCompleted {
    return isCompleted == true ? 1 : 0;
  }
}