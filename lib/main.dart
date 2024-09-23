import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_navigator/riverpod_navigator.dart';

import './observers/logger.dart';
import './screens/home_screen.dart';
import './app_navigator.dart';

// Flutter "Main" (entry point)
void main() => runApp(
      ProviderScope(
        observers: [Logger()],
        overrides: riverpodNavigatorOverrides([const HomeSegment()], AppNavigator.new),
        child: const App(),
      ),
    );

// Root App Widget
class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Read the AppNavigator to handle app routing
    final AppNavigator navigator = ref.read(navigatorProvider) as AppNavigator;
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.grey,
            shadowColor: Colors.black,
            surfaceTintColor: Colors.transparent,
            elevation: 5,
            scrolledUnderElevation: 5,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            )),
      ),
      routerDelegate: navigator.routerDelegate,
      routeInformationParser: navigator.routeInformationParser,
    );
  }
}
