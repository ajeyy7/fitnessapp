import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../controller/provider/focusarea.dart';

class FocusareaTile extends StatelessWidget {
  const FocusareaTile({super.key, required this.textt, required this.index});

  final String textt;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Consumer<FocusareaProvider>(
      builder: (context, focusareaProvider, child) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              focusareaProvider.changeState(index);
            },
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 4,
                        spreadRadius: 1,
                        color: Colors.indigo.shade400),
                  ],
                  border: Border.all(color: Colors.indigo.shade50, width: 2.0),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: focusareaProvider.sltdstate[index]
                      ? Colors.indigo.shade900
                      : Colors.indigo.shade100),
              child: Center(
                  child: Text(
                textt,
                style: TextStyle(
                    fontSize: 22,
                    color: focusareaProvider.sltdstate[index]
                        ? Colors.indigo.shade50
                        : Colors.indigo.shade900,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),
        );
      },
    );
  }
}
