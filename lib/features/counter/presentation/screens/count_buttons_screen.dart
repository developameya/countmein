import 'package:count_me_in/common/constants.dart';
import 'package:count_me_in/common/service_locator.dart';
import 'package:count_me_in/features/counter/state/count_bloc.dart';
import 'package:count_me_in/features/counter/state/count_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///Screen with only buttons to manipulate the count.
///
class CountButtonsScreen extends StatelessWidget {
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
          const Text(
            'This number is everywhere!',
          ),
          const SizedBox(height: 20),
          BlocBuilder<CountBloc, int>(
            bloc: sl<CountBloc>(),
            builder: (context, state) {
              return Text(
                '$state',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  //TODO: increase the count.
                  sl<CountBloc>().add(IncreaseCount());
                },
                icon: const Icon(Icons.add),
                label: const Text(increamentButtonLabel),
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //TODO: decrease the count.
                  sl<CountBloc>().add(DecreaseCount());
                },
                icon: const Icon(Icons.remove),
                label: const Text(decreamentButtonLabel),
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
