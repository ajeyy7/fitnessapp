import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BlckButton extends StatelessWidget {
  BlckButton(
      {super.key,
      required this.gendername,
      required this.onTap,
   });

  final gendername;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        onTapUp: (details) => HapticFeedback.mediumImpact(),
        onTapDown: (details) => HapticFeedback.mediumImpact(),
        child: Container(
          height: 50,
          width: 160,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 4,
                    spreadRadius: 1,
                    color: Colors.grey.shade500),
              ],
              border: Border.all(color: Colors.indigo.shade50, width: 2.0),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              color: Colors.indigo.shade100),
          child: Center(
              child: Text(
            gendername,
            style: TextStyle(
                fontSize: 18, color: Colors.grey.shade900, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
