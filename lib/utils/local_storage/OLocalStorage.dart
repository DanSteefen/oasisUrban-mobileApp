import 'package:get_storage/get_storage.dart';

class OLocalStorage{

  static final OLocalStorage _instance = OLocalStorage._internal();

  factory OLocalStorage(){
    return _instance;
  }

  OLocalStorage._internal();

  final _storage = GetStorage();

  //Generic method T?
  Future<void> saveData<T>(String key, T value) async{
    await _storage.write(key, value);
  }

  T? readData<T>(String key){
    return _storage.read(key);
  }

  Future<void> removeDate(String key) async{
    await _storage.remove(key);
  }

  Future<void> clearAll() async{
    await _storage.erase();
  }
}