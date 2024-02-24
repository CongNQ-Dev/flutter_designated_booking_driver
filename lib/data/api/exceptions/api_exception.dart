class ApiException implements Exception {
  final String? statusCode;
  final String? status;
  final String? message;
  final dynamic error;

  @override
  String toString() {
    return 'ApiException{statusCode: $statusCode, status: $status, message: $message, error: $error}';
  }

  ApiException({this.statusCode, this.status, this.message, this.error});
}
