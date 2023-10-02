import 'package:count_me_in/common/constants.dart';
import 'package:count_me_in/common/service_locator.dart';
import 'package:count_me_in/features/counter/presentation/widgets/count_text_button_widget.dart';
import 'package:count_me_in/features/counter/presentation/widgets/count_widget.dart';
import 'package:count_me_in/features/counter/state/count_bloc.dart';
import 'package:count_me_in/features/counter/state/count_event.dart';
import 'package:flutter/material.dart';

///Screen with only buttons to manipulate the count.
///
class CountButtonsScreen extends StatelessWidget {
  ///Creates Count Buttons screen.
  ///
  const CountButtonsScreen({super.key});

  static const routeName = '/countbuttons';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(buttonScreenTitle),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(countButtonsScreenPrompt),
          const SizedBox(height: 20),
          const CountWidget(),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CountTextButtonWidget(
                onPressed: () => sl<CountBloc>().add(IncreaseCount()),
                iconData: Icons.add,
                label: increamentButtonLabel,
              ),
              CountTextButtonWidget(
                onPressed: () => sl<CountBloc>().add(DecreaseCount()),
                iconData: Icons.remove,
                label: decreamentButtonLabel,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
