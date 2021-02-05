import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final child;
  final border;
  OptionCard({this.child, this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(32, 10, 32, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(1, 3),
          ),
        ],
        border: border,
      ),
      child: child,
    );
  }
}
