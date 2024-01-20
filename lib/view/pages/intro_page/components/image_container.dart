import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  ImageContainer({super.key, required this.genderimg, required this.onTap});

  final String genderimg;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(genderimg)),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(5),
                topLeft: Radius.circular(5)),
          ),
        ),
      ),
    );
  }
}
