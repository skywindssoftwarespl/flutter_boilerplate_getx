import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.title, this.subtitle, this.onChanged});
  final String title;
  final String? subtitle;
  final VoidCallback? onChanged;
  @override
  Widget build(BuildContext context) {
    return ListTile(leading: const Icon(Icons.circle, size: 10), title: Text(title), selected: true, onTap: onChanged);
  }
}
