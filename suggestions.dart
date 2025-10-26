import 'package:flutter/material.dart';

class suggestions extends StatefulWidget {
  final String name;
  const suggestions({super.key, required this.name});

  @override
  State<suggestions> createState() => _suggestionsState();
}

class _suggestionsState extends State<suggestions> {
  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 0,
      shadowColor: Color.fromRGBO(45, 45, 45, 1),
      backgroundColor: Color.fromRGBO(45, 45, 45, 1),
      label: Text(widget.name),
      labelStyle: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color.fromRGBO(45, 45, 45, 1), width: 1),
        borderRadius: BorderRadius.circular(8.5),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    );
  }
}
