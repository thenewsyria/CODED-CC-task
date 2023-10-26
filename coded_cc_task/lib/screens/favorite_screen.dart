import 'package:flutter/material.dart';
import 'package:coded_cc_task/screens/home_screen.dart';
import 'package:coded_cc_task/provider/favorite_provider.dart';

class FavoritePage extends StatelessWidget {
  // This widget displays a list of the user's favorite words.

  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the FavoriteProvider instance from the context.
    final provider = FavoriteProvider.of(context);

    // Get the list of favorite words.
    final words = provider.words;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
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
              // Remove the word from the favorites list when the user taps the IconButton.
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
    );
  }
}
