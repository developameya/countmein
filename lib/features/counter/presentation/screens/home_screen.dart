import 'package:beamer/beamer.dart';
import 'package:count_me_in/common/constants.dart';
import 'package:count_me_in/common/service_locator.dart';
import 'package:count_me_in/features/counter/presentation/screens/count_buttons_screen.dart';
import 'package:count_me_in/features/counter/presentation/widgets/count_action_button_widget.dart';
import 'package:count_me_in/features/counter/presentation/widgets/count_widget.dart';
import 'package:count_me_in/features/counter/state/count_bloc.dart';
import 'package:count_me_in/features/counter/state/count_event.dart';
import 'package:flutter/material.dart';

///Screen with the counter.
///
///Provides buttons to increase or decrease the count.
///
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(appTitle),
        actions: [
          IconButton(
            onPressed: () => context.beamToNamed(CountButtonsScreen.routeName),
            icon: const Icon(Icons.arrow_circle_right_rounded),
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(countPrompt),
            SizedBox(height: 20),
            CountWidget()
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CountActionButtonWidget(
            iconData: Icons.remove,
            tooltip: 'Decrement',
            onPressed: () => sl<CountBloc>().add(DecreaseCount()),
          ),
          CountActionButtonWidget(
            iconData: Icons.add,
            tooltip: 'Increment',
            onPressed: () => sl<CountBloc>().add(IncreaseCount()),
          ),
        ],
      ),
    );
  }
}
