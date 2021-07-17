class RestApiResponse<T> {
  final String message;
  final T data;

  RestApiResponse({
    required this.message,
    required this.data,
  });
}
