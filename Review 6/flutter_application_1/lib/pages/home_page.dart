import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          GestureDetector( 
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              width: lebar,
              height: tinggi,
              color: Colors.amberAccent,
              child: Center(
                child: AnimatedContainer(
                  width: selected ? 300.0 : 100.0,
                  height: selected ? 300.0 : 100.0,
                  color: selected ? Colors.red : Colors.blue,
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
