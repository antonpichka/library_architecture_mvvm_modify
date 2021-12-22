
class SettersEvent<T> {
  T _selectedSetterEvent;

  T get getSelectedSetterEvent {
    return _selectedSetterEvent;
  }

  set setSelectedSetterEvent(T selectedSetterEvent) {
    this._selectedSetterEvent = selectedSetterEvent;
  }
}