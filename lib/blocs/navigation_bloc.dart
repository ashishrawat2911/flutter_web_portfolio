import 'dart:async';

class NavigationDrawerBloc {
  final navigationController = StreamController<NavigationScreen>.broadcast();
  NavigationProvider navigationProvider = NavigationProvider();

  Stream get getNavigation => navigationController.stream;

  void updateNavigation(NavigationScreen navigation) {
    navigationProvider.updateNavigation(navigation);
    navigationController.sink.add(navigationProvider.currentNavigation);
  }

  void dispose() {
    navigationController.close();
  }
}

NavigationDrawerBloc navigationDrawerBloc = NavigationDrawerBloc();
enum NavigationScreen {
  Profile,Blog,Talks,PersonalProject
}

class NavigationProvider {
  NavigationScreen currentNavigation = NavigationScreen.Profile;

  void updateNavigation(NavigationScreen navigationScreen) {
    currentNavigation = navigationScreen;
  }
}
