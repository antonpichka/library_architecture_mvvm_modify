final class IterationService {
  static final IterationService instance = IterationService._();

  int _iteration;

  IterationService._() : _iteration = -1;

  int newValueParameterIteration() {
    _iteration++;
    return _iteration;
  }
}
