// ignore_for_file: invalid_required_positional_param

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    //print('ssss${sharedPreferences.toString()}');
  }

  static Future<bool> putBoolean({
    required String key,
    required bool value,
  }) async {
    return await sharedPreferences!.setBool(key, value);
  }

  static dynamic getData({
    required String key ,
  })
  {
    return  sharedPreferences!.get(key);
  }

  static bool? getBoolean({
    required String key,
  }) {
    return sharedPreferences!.getBool(key);
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if(value is String)return await sharedPreferences!.setString(key, value);
    if(value is int)return await sharedPreferences!.setInt(key, value);
    if(value is bool)return await sharedPreferences!.setBool(key, value);

    return await sharedPreferences!.setDouble(key, value);
  }
}
