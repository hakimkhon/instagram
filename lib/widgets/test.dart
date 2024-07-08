import 'package:flutter/material.dart';
import 'package:instagram/widgets/cont.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            for(int i = 1; i < 10; i++)
            Cont(rang: i * 100),
          ],
        ),
      ),
    );
  }
}
