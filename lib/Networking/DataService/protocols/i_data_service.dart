import 'package:dartz/dartz.dart';
import 'package:the_movie_db_app/Models/DataService/Data_service_response.dart';

abstract class IDataService {
  Future<Either<Exception, DataServiceResponse>> post({required String url, required String path ,Map<String, dynamic>? body, Map<String, dynamic>? queryParameters});
  Future<Either<Exception, DataServiceResponse>> get({required String url,required String path, Map<String, dynamic>? body});
}