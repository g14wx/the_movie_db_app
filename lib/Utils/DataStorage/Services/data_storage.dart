import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:the_movie_db_app/Constants/storage_keys.dart';
import 'package:the_movie_db_app/Utils/DataStorage/protocols/i_data_storage.dart';

@Injectable(as: IDataStorage)
class DataStorage implements IDataStorage {
  @override
  Future<Either<Exception, dynamic>> getData(
      {required String service, required String key}) async {
    late Box box;
    if (Hive.isBoxOpen(service)) {
      box = Hive.box(service);
    } else {
      box = await Hive.openBox(service);
    }
    final value = box.get(key);
    if (value != null) {
      return Left(
          Exception("Can't get the data with the provided service and key"));
    } else {
      return Right(value);
    }
  }

  @override
  Future<Either<Exception, bool>> writeData(
      {required String service, required String key, required value}) async {
    late Box box;
    if (Hive.isBoxOpen(service)) {
      box = Hive.box(service);
    } else {
      box = await Hive.openBox(service);
    }
    box.put(key, value);

    return const Right(true);
  }

  @override
  Future<Either<Exception, bool>> writeDataSecureData(
      {required String service, required String key, required value}) async {
    const secureStorage = FlutterSecureStorage();
    final alredyExistKey =
        await secureStorage.containsKey(key: StorageKeys.FLUTTER_SECURE_KEY);
    if (!alredyExistKey) {
      final encryprionKey =
          await secureStorage.read(key: StorageKeys.FLUTTER_SECURE_KEY);
      if (encryprionKey == null) {
        final key = Hive.generateSecureKey();
        await secureStorage.write(
          key: StorageKeys.FLUTTER_SECURE_KEY,
          value: base64UrlEncode(key),
        );
      }
    }
    final key = await secureStorage.read(key: StorageKeys.FLUTTER_SECURE_KEY);
    final encryptionKey = base64Url.decode(key!);
    final encryptedBox = await Hive.openBox(service,
        encryptionCipher: HiveAesCipher(encryptionKey));
    encryptedBox.put(key, value);
    return const Right(true);
  }

  @override
  Future<Either<Exception, dynamic>> getDataSecureData(
      {required String service, required String key, String? secureKey}) async {
    const secureStorage = FlutterSecureStorage();
    final alredyExistKey =
        await secureStorage.containsKey(key: StorageKeys.FLUTTER_SECURE_KEY);
    if (alredyExistKey) {
      try {
        final key =
            await secureStorage.read(key: StorageKeys.FLUTTER_SECURE_KEY);
        final encryptionKey = base64Url.decode(key!);
        final encryptedBox = await Hive.openBox(service,
            encryptionCipher: HiveAesCipher(encryptionKey));
        return Right(await encryptedBox.get(key));
      } catch (_) {
        return Left(Exception(""));
      }
    } else {
      return Left(Exception(""));
    }
  }
}
