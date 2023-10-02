import 'package:flutter/material.dart';

///Button for home screen to manipulate the count.
///
class CountActionButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String tooltip;
  final IconData iconData;

  ///Creates count action button.
  ///
  ///* Requires:
  ///- [tooltip] : For accessiblity.
  ///- [iconData] : Icon representative of the action.
  ///
  const CountActionButtonWidget({
    super.key,
    this.onPressed,
    required this.tooltip,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        heroTag: null,
        onPressed: onPressed,
        tooltip: tooltip,
        child: Icon(iconData),
      ),
    );
  }
}
