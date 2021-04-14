import 'package:flutter/material.dart';

class CounterDropdown extends StatelessWidget {
  final List<String> countries;
  final String country;
  final Function(String) onChanged;

  const CounterDropdown(
      {@required this.countries,
      @required this.country,
      @required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
