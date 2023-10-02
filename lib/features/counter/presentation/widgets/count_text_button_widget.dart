import 'package:flutter/material.dart';

///Button for count button screen to manipulate the count.
class CountTextButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final String label;

  ///Creates count action button.
  ///
  ///* Requires:
  ///- [label] : Text displayed on the button.
  ///- [iconData] : Icon representative of the action.
  ///
  const CountTextButtonWidget({
    super.key,
    this.onPressed,
    required this.iconData,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(iconData),
      label: Text(label),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[800]),
    );
  }
}
