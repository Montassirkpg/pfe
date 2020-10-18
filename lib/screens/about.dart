import 'package:flutter/material.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 500,
      width: 500,
      child: Text("V 1.1.0", style: TextStyle(
                                      fontSize: 14.0, color: Colors.black)),
    );
  }
}