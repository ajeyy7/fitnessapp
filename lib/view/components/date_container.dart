import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Date_Container extends StatelessWidget {
  Date_Container({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now=DateTime.now();
    DateTime selectedDate= DateTime(now.year,now.month,now.day);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.indigo.shade200,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 4,
                spreadRadius: 1,
                color: Colors.grey.shade700),
          ],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              7,
                  (index){
                DateTime date=selectedDate.add(Duration(days: index));
                bool iscurrentday= date.day==now.day;
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal:4,vertical:4),
                  child: Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 4,
                              spreadRadius: 1,
                              color: Colors.grey.shade800),
                        ],
                        color: iscurrentday? Colors.black:Colors.indigo.shade900,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          Text(
                            DateFormat('E').format(date),
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey.shade50),
                          ),
                          Text(
                            date.day.toString()
                                                    ,style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade50),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
                  }
            ),
          ),
        ),
      ),
    );
  }
}
