abstract class BaseTypeParameter<T> {
  final T _parameter;

  BaseTypeParameter(this._parameter);

  T get getParameter {
    return _parameter;
  }
}