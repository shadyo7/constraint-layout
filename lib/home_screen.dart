import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDescription = false; // flas to toggle the Button
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar with center Title
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'How to make a \n constraint layout in Flutter',
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Colors.white, //Scaffold BackGround Color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20), //Padding from left and right
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: double
                  .infinity, // To ensure the container stretches to the available width
            ),
            child: IntrinsicHeight(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 8, 170, 175),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 8, 170, 175),
                        size: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Constraint Layout',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    if (isDescription)
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          't is a long established fact that a reader will be distracted by'
                          'the readable content of a page when looking at its layout.'
                          'The point of using Lorem Ipsum is that it has a more-or-less'
                          'normal distribution of letters, as opposed to using Content here,'
                          'content here,making it look like readable English.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isDescription = !isDescription;
                          });
                        },
                        child: Text(
                          /*Show Detail when isDescription is true 
                           and Button Title to Hide Detail
                           else Button title will be Add Detail
                           */
                          isDescription ? 'Hide Detail' : 'Add Detail',
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
