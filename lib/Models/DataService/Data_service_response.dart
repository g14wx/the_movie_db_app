import 'package:freezed_annotation/freezed_annotation.dart';

part 'Data_service_response.freezed.dart';

@immutable
@freezed
class DataServiceResponse with _$DataServiceResponse {
  const factory DataServiceResponse({required int statusCode, required dynamic data}) = _DataServiceResponse;
}