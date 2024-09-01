import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class FavoritesProvider extends ChangeNotifier {
  List<Map<String, String?>> _favorites = [];

  List<Map<String, String?>> get favorites => _favorites;

  FavoritesProvider() {
    _loadFavorites();
  }

  void addFavorite(String text,
      {String? explanation, String? backgroundImage}) async {
    if (_favorites.any((item) => item['text'] == text)) {
      return;
    }
    _favorites.add({
      'text': text,
      'explanation': explanation,
      'image': backgroundImage,
    });
    await _saveFavorites();
    notifyListeners();
  }

  void removeFavorite(String text) async {
    _favorites.removeWhere((favorite) => favorite['text'] == text);
    await _saveFavorites();
    notifyListeners();
  }

  bool isFavorite(String text) {
    return _favorites.any((favorite) => favorite['text'] == text);
  }

  Future<void> _saveFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String encodedData = jsonEncode(_favorites);
    await prefs.setString('favorites', encodedData);
  }

  Future<void> _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? encodedData = prefs.getString('favorites');
    if (encodedData != null) {
      List<dynamic> decodedData = jsonDecode(encodedData);
      _favorites =
          decodedData.map((item) => Map<String, String?>.from(item)).toList();
      notifyListeners();
    }
  }
}
