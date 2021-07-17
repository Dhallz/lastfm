class RestApiError {
  final String error;
  final String message;

  RestApiError({
    // REVIEW HttpErrors are handled in interceptor, serialization is the last reamaning error.
    this.error = 'Serialization error',
    this.message = 'Bad value from API',
  });
}
