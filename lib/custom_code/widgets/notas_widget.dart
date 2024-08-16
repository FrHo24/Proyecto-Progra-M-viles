// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class NotasWidget extends StatelessWidget {
  final String title;
  final String content;
  final bool isImportant;

  const NotasWidget({
    Key? key,
    required this.title,
    required this.content,
    this.isImportant = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isImportant ? Colors.red[100] : Colors.white,
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(content),
        trailing:
            isImportant ? Icon(Icons.priority_high, color: Colors.red) : null,
      ),
    );
  }
}
