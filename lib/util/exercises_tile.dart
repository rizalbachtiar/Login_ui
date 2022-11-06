import 'package:flutter/material.dart';

class ExercisesTile extends StatelessWidget {
  final icon;
  final String exercisesName;
  final int numberOfExercises;
  final color;

  const ExercisesTile({
    Key? key,
    required this.icon,
    required this.exercisesName,
    required this.numberOfExercises,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        padding: const EdgeInsets.all(16),
                        color: color,
                        child: Icon(icon, color: Colors.white,)
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exercisesName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        numberOfExercises.toString()  + ' Exercises',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 14
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          )
      ),
    );
  }
}

