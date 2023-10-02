import 'package:beamer/beamer.dart';
import 'package:count_me_in/features/counter/presentation/screens/count_buttons_screen.dart';
import 'package:count_me_in/features/counter/presentation/screens/home_screen.dart';

final beamerDelgate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      HomeScreen.routeName: (context, state, data) => const HomeScreen(),
      CountButtonsScreen.routeName: (context, state, data) =>
          const CountButtonsScreen(),
    },
  ),
);
