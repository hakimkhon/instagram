import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  const Cont({super.key, this.rang = 100});
  final int rang;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      color: Colors.red[rang],
      margin: const EdgeInsets.all(10),
    );
  }
}
