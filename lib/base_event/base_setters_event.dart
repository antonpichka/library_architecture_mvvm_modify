
class BaseSettersEvent<T> {
  T _selectedSetterEvent;

  T get getSelectedSetterEvent {
    return _selectedSetterEvent;
  }

  set setSelectedSetterEvent(T selectedSetterEvent) {
    _selectedSetterEvent = selectedSetterEvent;
  }
}