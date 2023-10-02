/// Events acknowledged by [CountBloc].
abstract class CountEvent {}

/// Notifies bloc to increase count.
class IncreaseCount extends CountEvent {}

/// Notifies bloc to decrease count.
class DecreaseCount extends CountEvent {}
