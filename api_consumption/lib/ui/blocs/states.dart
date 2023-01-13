abstract class BaseState {}

class SuccessState<T> implements BaseState {
  final T data;

  SuccessState(this.data);
}

class ErrorState implements BaseState {
  final String message;

  ErrorState(this.message);
}

class EmptyState implements BaseState {
  final String? message;

  EmptyState({this.message});
}

class LoadingState implements BaseState {
  const LoadingState();
}
