import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UserBalance extends BaseModel {
  final String username;
  final int money;

  const UserBalance(this.username, this.money) : super(username);

  @override
  UserBalance clone() => UserBalance(username, money);

  @override
  String toString() {
    return "UserBalance(username: $username, "
        "money: $money)";
  }
}

@immutable
base class ListUserBalance<T extends UserBalance> extends BaseListModel<T> {
  const ListUserBalance(super.listModel) : super();

  @override
  ListUserBalance<T> clone() {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.clone() as T);
    }
    return ListUserBalance<T>(newListModel);
  }

  @override
  String toString() {
    String strListModel = "\n";
    for (final T itemModel in listModel) {
      strListModel += "$itemModel,\n";
    }
    return "ListUserBalance(listModel: [$strListModel])";
  }
}

@immutable
final class UserBalanceTTOrderByDescTTMoneyTTIterator
    extends BaseModelTTNamedTTNamedTTNamedTTIterator<UserBalance> {
  @protected
  @override
  CurrentModelWIndex<UserBalance> get currentModelWIndex {
    UserBalance clone = listModelIterator[0].clone();
    if (listModelIterator.length <= 1) {
      return CurrentModelWIndex<UserBalance>(clone, 0);
    }
    int indexRemove = 0;
    for (int i = 1; i < listModelIterator.length; i++) {
      final itemModelIterator = listModelIterator[i];
      if (itemModelIterator.money > clone.money) {
        clone = itemModelIterator.clone();
        indexRemove = i;
        continue;
      }
    }
    return CurrentModelWIndex<UserBalance>(clone, indexRemove);
  }
}

void main() {
  final listUserBalance =
      ListUserBalance<UserBalance>(List.empty(growable: true));
  listUserBalance.insertListFromNewListModelParameterListModel([
    UserBalance("Jone", 3),
    UserBalance("Freddy", 1),
    UserBalance("Mitsuya", 10),
    UserBalance("Duramichi", 5),
    UserBalance("Hook", 7),
    UserBalance("Sexy", -1)
  ]);
  debugPrint("Before: $listUserBalance"); // 3, 1, 10, 5, 7, -1
  final userBalanceTTOrderByDescTTMoneyTTIterator =
      UserBalanceTTOrderByDescTTMoneyTTIterator();
  listUserBalance
      .sortingFromModelTTNamedTTNamedTTNamedTTIteratorParameterListModel(
          userBalanceTTOrderByDescTTMoneyTTIterator);
  debugPrint("After: $listUserBalance"); // 10, 7, 5, 3, 1, -1
  listUserBalance
      .updateFromNewModelParameterListModel(UserBalance("Duramichi", 15));
  listUserBalance
      .sortingFromModelTTNamedTTNamedTTNamedTTIteratorParameterListModel(
          userBalanceTTOrderByDescTTMoneyTTIterator);
  debugPrint("After(Two): $listUserBalance"); // 15, 10, 7, 3, 1, -1
  listUserBalance.deleteFromUniqueIdByModelParameterListModel("Mitsuya");
  listUserBalance
      .sortingFromModelTTNamedTTNamedTTNamedTTIteratorParameterListModel(
          userBalanceTTOrderByDescTTMoneyTTIterator);
  debugPrint("After(Three): $listUserBalance"); // 15, 7, 3, 1, -1
}
// EXPECTED OUTPUT:
//
// Before: ListUserBalance(listModel: [
// UserBalance(username: Jone, money: 3),
// UserBalance(username: Freddy, money: 1),
// UserBalance(username: Mitsuya, money: 10),
// UserBalance(username: Duramichi, money: 5),
// UserBalance(username: Hook, money: 7),
// UserBalance(username: Sexy, money: -1),
// ])
// After: ListUserBalance(listModel: [
// UserBalance(username: Mitsuya, money: 10),
// UserBalance(username: Hook, money: 7),
// UserBalance(username: Duramichi, money: 5),
// UserBalance(username: Jone, money: 3),
// UserBalance(username: Freddy, money: 1),
// UserBalance(username: Sexy, money: -1),
// ])
// After(Two): ListUserBalance(listModel: [
// UserBalance(username: Duramichi, money: 15),
// UserBalance(username: Mitsuya, money: 10),
// UserBalance(username: Hook, money: 7),
// UserBalance(username: Jone, money: 3),
// UserBalance(username: Freddy, money: 1),
// UserBalance(username: Sexy, money: -1),
// ])
// After(Three): ListUserBalance(listModel: [
// UserBalance(username: Duramichi, money: 15),
// UserBalance(username: Hook, money: 7),
// UserBalance(username: Jone, money: 3),
// UserBalance(username: Freddy, money: 1),
// UserBalance(username: Sexy, money: -1),
// ])
//
// Process finished with exit code 0
