// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;
  var iconVisible = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        color: Colors.grey[200],
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.indigoAccent,
        //       Color.fromARGB(255, 179, 85, 130),
        //     ],
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //   ),
        // ),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                // Container(
                //   height: 150,
                //   width: 150,
                //   child: Image.network(
                //       "https://cdn-icons-png.flaticon.com/512/2203/2203137.png"),
                // ),
                Lottie.asset(
                  'assets/lotties/infinite-loader.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
                Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign in to continue',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),

                SizedBox(
                  height: 60,
                ),

                //text field
                TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Email or Username',
                    prefixIcon: Icon(Icons.person_outline),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFF4BA3),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  autocorrect: false,
                  obscureText: isVisible,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.key),
                    suffixIcon: IconButton(
                      icon: Icon(
                        iconVisible,
                        color: Color(0xffFF4BA3),
                      ),
                      onPressed: () {
                        setState(() {
                          if (isVisible == true) {
                            isVisible = false;
                            iconVisible = Icons.visibility_off;
                          } else {
                            isVisible = true;
                            iconVisible = Icons.visibility;
                          }
                        });
                      },
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffFF4BA3),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  height: 44.0,
                  // padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Color(0xffFF4BA3),
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                          colors: [Color(0xffFD6A79), Color(0xffFF4BA3)])),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Sign in'),
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Color(0xffF6307A),
                      // shadowColor: Color(0xffF6307A),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Don't Have an account?",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffFF4BA3),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
