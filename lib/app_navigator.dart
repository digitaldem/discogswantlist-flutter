import 'package:riverpod_navigator/riverpod_navigator.dart';

import './screens/home_screen.dart';
import './screens/want_screen.dart';

// Define routes via strongly typed segments
class AppNavigator extends RNavigator {
  AppNavigator(super.ref)
      : super(
          routes: [
            // Home (WantList)
            RRoute<HomeSegment>(
              'home',
              HomeSegment.decode,
              HomeScreen.new,
            ),
            // Want Detail
            RRoute<WantSegment>(
              'want',
              WantSegment.decode,
              WantScreen.new,
            ),
          ],
        );
}
