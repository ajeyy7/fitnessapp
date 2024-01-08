import 'package:fitnessapp/view/pages/home_page/components/small_container.dart';
import 'package:flutter/material.dart';

class Yoga_Exersice extends StatelessWidget {
  Yoga_Exersice(
      {super.key,
      required this.onTap,
      required this.imgpath,
      required this.nametxt,
      required this.Icona,
      required this.Iconb,
      required this.Iconc,
      required this.txta,
      required this.txtb,
      required this.txtc});

  final void Function()? onTap;
  final String imgpath;
  final String nametxt;
  final IconData Icona;
  final IconData Iconb;
  final IconData Iconc;
  final String txta;
  final String txtb;
  final String txtc;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 4,
                    spreadRadius: 1,
                    color: Colors.indigo.shade400),
              ],
              image: DecorationImage(

                  fit: BoxFit.cover, image: AssetImage(imgpath)),
              borderRadius: BorderRadius.circular(20),
              // color: Colors.blueGrey.shade200,
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nametxt,
                      style: TextStyle(
                          color: Colors.indigo.shade900,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Full Body",
                      style: TextStyle(
                          color: Colors.indigo.shade900,
                          fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Small_containerr(icon: Icona, txt: txta),
                      Small_containerr(icon: Iconb, txt: txtb),
                    ],
                  ),
                  Small_containerr(icon: Iconc, txt: txtc),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
