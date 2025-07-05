enum Result {
  success,
  failure;

  bool get isSuccess => this == Result.success;
  bool get isFailure => this == Result.failure;
}
