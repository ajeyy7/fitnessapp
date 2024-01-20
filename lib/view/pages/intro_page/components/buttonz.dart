import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';

class ButtonZ extends StatelessWidget {
  ButtonZ({super.key,required this.onTap, required this.buttontxt});
  void Function()? onTap;
  final String buttontxt;
  @override
  Widget build(BuildContext context) {
    return NeoPopTiltedButton(

        yPosFactor: 10,
        onTapDown: () => HapticFeedback,
        onTapUp: onTap,
        isFloating: true,
        decoration: NeoPopTiltedButtonDecoration(
          border: Border.symmetric(vertical:BorderSide(color: Colors.indigo.shade500,width: 50,strokeAlign: 1)),
          shimmerWidth: 10,
          showShimmer: true,
          shimmerColor: Colors.white60,
            color: Colors.indigo.shade500,
            plunkColor: Colors.indigo.shade300,
            shadowColor: Colors.grey.shade500),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
          child: Text(
            buttontxt,
            style: TextStyle(color: Colors.grey.shade50,fontSize: 16,fontWeight: FontWeight.w600),
          ),
        ));
  }
}
