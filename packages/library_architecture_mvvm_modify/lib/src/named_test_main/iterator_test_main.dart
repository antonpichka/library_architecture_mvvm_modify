import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UserBalance extends BaseModel {
  final String username;
  final int money;

  const UserBalance(this.username, this.money) : super(username);

  @override
  UserBalance get getClone => UserBalance(username, money);

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
  ListUserBalance<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListUserBalance<T>(newListModel);
  }
}

@immutable
base class UserBalanceWOrderByDescWMoneyIterator<T extends UserBalance>
    extends BaseModelWNamedWNamedWNamedIterator<T> {
  @override
  T get current {
    T clone = listModelIterator.first.getClone as T;
    if (listModelIterator.length <= 1) {
      listModelIterator.removeAt(0);
      return clone;
    }
    int indexRemove = 0;
    for (int i = 1; i < listModelIterator.length; i++) {
      final itemModelIterator = listModelIterator[i];
      if (itemModelIterator.money > clone.money) {
        clone = itemModelIterator.getClone as T;
        indexRemove = i;
        continue;
      }
    }
    listModelIterator.removeAt(indexRemove);
    return clone;
  }
}

void main() {
  final ListUserBalance<UserBalance> listUserBalance =
      ListUserBalance(List.empty(growable: true));
  listUserBalance
      .insertFromNewModelParameterListModel(UserBalance("Jone", 3)); // 0
  listUserBalance
      .insertFromNewModelParameterListModel(UserBalance("Freddy", 1)); // 1
  listUserBalance
      .insertFromNewModelParameterListModel(UserBalance("Mitsuya", 10)); // 2
  listUserBalance
      .insertFromNewModelParameterListModel(UserBalance("Duramichi", 5)); // 3
  listUserBalance
      .insertFromNewModelParameterListModel(UserBalance("Hook", 7)); // 4
  listUserBalance
      .insertFromNewModelParameterListModel(UserBalance("Sexy", -1)); // 5
  debugPrint("Before: ${listUserBalance.listModel}"); // 3, 1, 10, 5, 7, -1
  final userBalanceWOrderByDescWMoneyIterator =
      UserBalanceWOrderByDescWMoneyIterator<UserBalance>();
  listUserBalance.sortingFromModelWNamedWNamedWNamedIteratorParameterListModel(
      userBalanceWOrderByDescWMoneyIterator);
  debugPrint("After: ${listUserBalance.listModel}"); // 10, 7, 5, 3, 1, -1
  listUserBalance
      .updateFromNewModelParameterListModel(UserBalance("Duramichi", 15));
  listUserBalance.sortingFromModelWNamedWNamedWNamedIteratorParameterListModel(
      userBalanceWOrderByDescWMoneyIterator);
  debugPrint(
      "After (Two): ${listUserBalance.listModel}"); // 15, 10, 7, 3, 1, -1
  // EXPECTED OUTPUT:
  //
  // Before: [UserBalance(username: Jone, money: 3), UserBalance(username: Freddy, money: 1), UserBalance(username: Mitsuya, money: 10), UserBalance(username: Duramichi, money: 5), UserBalance(username: Hook, money: 7), UserBalance(username: Sexy, money: -1)]
  // After: [UserBalance(username: Mitsuya, money: 10), UserBalance(username: Hook, money: 7), UserBalance(username: Duramichi, money: 5), UserBalance(username: Jone, money: 3), UserBalance(username: Freddy, money: 1), UserBalance(username: Sexy, money: -1)]
  // After (Two): [UserBalance(username: Duramichi, money: 15), UserBalance(username: Mitsuya, money: 10), UserBalance(username: Hook, money: 7), UserBalance(username: Jone, money: 3), UserBalance(username: Freddy, money: 1), UserBalance(username: Sexy, money: -1)]  //
  //
  // Process finished with exit code 0
}
