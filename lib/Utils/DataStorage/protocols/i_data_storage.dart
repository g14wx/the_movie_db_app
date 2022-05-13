import 'package:dartz/dartz.dart';

abstract class IDataStorage {
  Future<Either<Exception, dynamic>> getData({required String service, required String key});
  Future<Either<Exception, dynamic>> getDataSecureData({required String service, required String key, String? secureKey});
  Future<Either<Exception, bool>> writeData({required String service, required String key, required dynamic value});
  Future<Either<Exception, bool>> writeDataSecureData({required String service, required String key, required dynamic value});
}