import 'package:flutter/material.dart';

class name extends StatefulWidget {
  name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (() {}),
      child: Text("data"),
    );
  }
}
