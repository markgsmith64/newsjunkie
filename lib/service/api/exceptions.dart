part of 'api_service.dart';

class APIError implements Exception {
  final int? statusCode;
  Exception? e;

  APIError(this.statusCode, {this.e});
}
