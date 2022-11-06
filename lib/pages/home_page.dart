import 'package:clone_ui_1/util/emoticon_face.dart';
import 'package:clone_ui_1/util/exercises_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //Greetings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Rizal!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            '21 Oct 2022',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),

                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),

                  //How do you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(height: 25,),

                  //4 different face
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😩',),
                          SizedBox(height: 8,),
                          Text(
                            'Bad',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🙂',),
                          SizedBox(height: 8,),
                          Text(
                            'Fine',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '😀',),
                          SizedBox(height: 8,),
                          Text(
                            'Smile',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: '🥳',),
                          SizedBox(height: 8,),
                          Text(
                            'Excellent',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [

                      //Excercises Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                          ),
                            Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(height: 20,),

                      Expanded(child: ListView(
                        children: const [
                          ExercisesTile(
                            icon: Icons.favorite,
                            exercisesName: 'Speaking Skills',
                            numberOfExercises: 16,
                            color: Colors.orange,
                          ),
                          ExercisesTile(
                            icon: Icons.person,
                            exercisesName: 'Reading Skills',
                            numberOfExercises: 9,
                            color: Colors.green,
                          ),
                          ExercisesTile(
                            icon: Icons.star,
                            exercisesName: 'Writing Skills',
                            numberOfExercises: 21,
                            color: Colors.pink,
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
