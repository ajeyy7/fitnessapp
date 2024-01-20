import 'package:fitnessapp/controller/provider/goal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OptionTile extends StatelessWidget {
  OptionTile({super.key, required this.textt});
  final String textt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          Provider.of<GoalProvider>(context, listen: false).choosenGoal(textt);
        },
        child: Consumer<GoalProvider>(
            builder: (context, goalProvider, child) {
              bool _isSelected = goalProvider.selectedGoal == textt;
              return Container(
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
                    border: Border.all(
                        color: Colors.indigo.shade50, width: 2.0),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: _isSelected? Colors.indigo.shade900:Colors.indigo.shade100),
                child: Center(child: Text(textt, style: TextStyle(
                    fontSize: 22,
                    color: _isSelected? Colors.grey.shade50:Colors.grey.shade900,
                    fontWeight: FontWeight.bold),)),
              );
            }
        ),
      ),
    );
  }
}
