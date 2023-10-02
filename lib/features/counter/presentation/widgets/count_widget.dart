import 'package:count_me_in/common/service_locator.dart';
import 'package:count_me_in/features/counter/state/count_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///Displays the count.
///
class CountWidget extends StatelessWidget {
  ///Creates count widget.
  ///
  const CountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountBloc, int>(
      bloc: sl<CountBloc>(),
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return Text(
          '$state',
          style: Theme.of(context).textTheme.headlineMedium,
        );
      },
    );
  }
}
