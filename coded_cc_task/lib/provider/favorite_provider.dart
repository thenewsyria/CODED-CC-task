import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  // List of favorite words.
  List<String> _words = [];

  // Returns the list of favorite words.
  List<String> get words => _words;

  // Adds or removes a word from the list of favorites.
  void toggleFavorite(String word) {
    final isExist = _words.contains(word);
    if (isExist) {
      _words.remove(word);
    } else {
      _words.add(word);
    }

    // Notify listeners of the change.
    notifyListeners();
  }

  // Checks if a word is in the list of favorites.
  bool isExist(String word) {
    final isExist = _words.contains(word);
    return isExist;
  }

  // Clears the list of favorites.
  void clearFavorite() {
    _words = [];

    // Notify listeners of the change.
    notifyListeners();
  }

  // Static method to get the FavoriteProvider instance from the context.
  static FavoriteProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<FavoriteProvider>(
      context,
      listen: listen,
    );
  }
}
