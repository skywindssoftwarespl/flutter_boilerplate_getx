import 'package:flutter/material.dart';

import '../../core/value/dimens.dart';

abstract class CustomWidget {
  void show(BuildContext context);
}

class CustomDialog extends CustomWidget {
  CustomDialog({required this.title, required this.content, required this.onPressed, this.btnName});
  final String title;
  final String content;
  final VoidCallback onPressed;
  final String? btnName;
  @override
  void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: onPressed,
              child: Text(btnName ?? 'close'),
            ),
          ],
        );
      },
    );
  }
}

class CustomBottomSheet extends CustomWidget {
  CustomBottomSheet({required this.title, required this.content, required this.onPressed, this.btnName});
  final String title;
  final String content;
  final VoidCallback onPressed;
  final String? btnName;
  @override
  void show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Text(title),
                height_8x,
                Text(content),
                ElevatedButton(onPressed: onPressed, child: Text(btnName ?? 'Close'))
              ]));
        });
  }
}
