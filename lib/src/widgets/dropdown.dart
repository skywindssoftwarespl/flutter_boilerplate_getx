import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({super.key, required this.value, required this.items, required this.onChanged});
  final String value;
  final List<String>? items;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('select'),
      value: value,
      items: items?.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value)
        );
      }).toList(),
      onChanged: onChanged
    );
  }
}
