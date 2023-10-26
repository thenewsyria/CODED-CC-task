import 'package:coded_cc_task/screens/favorite_screen.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:coded_cc_task/screens/home_screen.dart';
import 'package:coded_cc_task/provider/favorite_provider.dart';

class HomePage extends StatelessWidget {
  // This widget displays a list of English words, with the option to add them to a list of favorites.
  // When a user taps on a favorite word, it is removed from the favorites list.

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the list of words to display.
    final words = nouns.take(50).toList();

    // Get the FavoriteProvider instance from the context.
    final provider = FavoriteProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('English Words'),
      ),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          // Get the word at the current index.
          final word = words[index];

          // Return a ListTile for the word.
          return ListTile(
            title: Text(word),
            trailing: IconButton(
              // Add or remove the word from the favorites list when the user taps the IconButton.
              onPressed: () {
                provider.toggleFavorite(word);
              },

              // Display a red heart icon if the word is in the favorites list, or a gray heart icon otherwise.
              icon: provider.isExist(word)
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        // Navigate to the FavoritePage when the user taps the FloatingActionButton.
        onPressed: () {
          final route = MaterialPageRoute(
            builder: (context) => const FavoritePage(),
          );
          Navigator.push(context, route);
        },
        label: const Text('Favorites'),
      ),
    );
  }
}
