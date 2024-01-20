import 'package:flutter/material.dart';

import '../components/picks_for_you.dart';

class Strech extends StatelessWidget {
  const Strech({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => Picksforyou(),
          ),
        )

    );
  }
}
