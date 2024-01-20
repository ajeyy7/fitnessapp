import 'package:flutter/material.dart';

class Daily_yoga extends StatelessWidget {
   Daily_yoga({super.key, required this.namee, required this.imgg});
  final String namee;
  final String imgg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(4,4),
                blurRadius: 4,
                spreadRadius: 1,
                color: Colors.indigo.shade500),
          ],
          image: DecorationImage(
              fit: BoxFit.cover
              ,
              image: AssetImage(imgg)),
          color: Colors.indigo.shade900,
          borderRadius: BorderRadius.only(topLeft:Radius.circular(16),bottomRight:Radius.circular(16),),
        ),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(namee,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.grey.shade50),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
