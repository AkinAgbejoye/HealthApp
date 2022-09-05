import 'package:flutter/material.dart';

class ExerciseTiles extends StatelessWidget {
  final icon;
  final String ExerciseName;
  final int numberOfExercises;
  final Color color;
  const ExerciseTiles(
      {Key? key,
      required this.ExerciseName,
      required this.icon,
      required this.numberOfExercises,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      color: color,
                      padding: const EdgeInsets.all(16),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ExerciseName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      numberOfExercises.toString() + " Exercises",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey),
                    )
                  ],
                ),
              ]),
              Icon(Icons.more_horiz)
            ],
          )),
    );
  }
}
