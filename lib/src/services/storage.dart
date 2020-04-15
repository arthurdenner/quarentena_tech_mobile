import 'dart:convert';
import 'package:quarentena_tech_mobile/src/models/thing.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Thing>> getStorageThings() async {
  final prefs = await SharedPreferences.getInstance();
  final result = (prefs.getStringList('things') ?? []);

  return result.map((e) => Thing.fromJson(json.decode(e))).toList();
}

Future<void> saveStorageThings(List<Thing> things) async {
  final prefs = await SharedPreferences.getInstance();
  final result = things.map((e) => json.encode(e)).toList();

  prefs.setStringList('things', result);
}
