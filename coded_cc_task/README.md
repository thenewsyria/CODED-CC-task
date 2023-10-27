## Getting Started

Description for your Flutter project:

Project Name: Flutter Favorites Provider Demo

- Description:
    This Flutter project is a demonstration of state management using the Provider package for managing a list of favorite English words. 
    The application allows users to view a list of English words and mark their favorites. The project comprises various components 
    structured as follows:

- Provider Folder:

    The Provider folder contains the core state management component, FavoriteProvider.
    FavoriteProvider is a ChangeNotifier class responsible for managing a list of favorite English words.
    Users can add or remove words from their favorites list. When a change occurs, it notifies listeners.
    Users can check if a word is in their favorites and clear the list of favorites.
- Screens Folder:

    The Screens folder contains the visual components of the app.
    
    home_screen.dart is the primary screen where users can view a list of English words and mark them as favorites.
    
    Users can tap on words to toggle their status as favorites, and a red heart icon indicates favorited words.
    
    The FloatingActionButton allows users to navigate to the FavoritePage to view their favorite words.
    
    favorite_screen.dart is a screen where users can see their favorite words.
    
    Similar to the home screen, it displays a list of words and allows users to remove words from their favorites list.
    
    
    The main.dart file serves as the entry point of the application.
    The MyApp widget wraps the HomePage widget and provides access to the FavoriteProvider instance.
    The app uses the MaterialApp widget as the top-level widget for navigation.

- How to Use:

    Clone or download the project from GitHub.
    Ensure you have Flutter and Dart installed on your system.
    Open the project in your preferred Flutter IDE.
    Run the application on an emulator or physical device.
    In the HomePage, tap on words to add or remove them from your favorites.
    Use the floating action button to navigate to the FavoritePage to view and manage your favorite words.
    This project offers a practical example of implementing state management using the Provider package in Flutter applications. It 
    demonstrates how to create a simple favorites system and provides a foundation for building similar features in your own projects.

- Demo:
  

https://github.com/thenewsyria/CODED-CC-task/assets/96256695/5e18693d-5324-4f78-9ca0-8c6ed589c51e

