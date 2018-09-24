import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Label extends StatelessWidget {
  const Label(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(label, style: TextStyle(fontSize: 24.0))));
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key key, this.color, this.width, this.height, this.child});

  final Color color;
  final double width, height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        child: Card(
            color: color,
            elevation: 8.0,
            margin:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
            child: child));
  }
}

class CounterChip extends StatelessWidget {
  const CounterChip({Key key, this.child});

  final Widget child;

  @override
  Widget build2(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(15.0)),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Chip(
        backgroundColor: Colors.red,
        label: child,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
