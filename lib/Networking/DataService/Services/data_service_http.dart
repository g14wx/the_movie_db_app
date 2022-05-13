import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Models/DataService/Data_service_response.dart';
import 'package:the_movie_db_app/Networking/DataService/protocols/i_data_service.dart';

@Injectable(as: IDataService)
class DataServiceHttp implements IDataService {
  @override
  Future<Either<Exception, DataServiceResponse>> get(
      {required String url,
      required String path,
      Map<String, dynamic>? body}) async {
    try {
      var response = await http.get(Uri.https( url, path, body));

      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
      final dataResponse = DataServiceResponse(
          statusCode: response.statusCode, data: decodedResponse);
      return Right(dataResponse);
    } on SocketException {
      return Left(Exception("No internet connection"));
    } on HttpException {
      return Left(Exception("Bad api request"));
    } /*on FormatException {
      return Left(Exception("Bad Response format"));
    }*/ catch (e) {
      return Left(Exception("Error parsing data"));
    }
  }

  @override
  Future<Either<Exception, DataServiceResponse>> post(
      {required String url, required String path, Map<String, dynamic>? body, Map<String, dynamic>? queryParameters}) async {
    try {
      var response = await http.post(Uri.https(url,path, queryParameters), body: body);

      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes));
      final dataResponse = DataServiceResponse(
          statusCode: response.statusCode, data: decodedResponse);
      return Right(dataResponse);
    } on SocketException {
      return Left(Exception("No internet connection"));
    } on HttpException {
      return Left(Exception("Bad api request"));
    } on FormatException {
      return Left(Exception("Bad Response format"));
    }
  }
}
