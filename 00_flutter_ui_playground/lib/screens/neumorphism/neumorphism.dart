import 'package:flutter/material.dart';

class Neumorphism extends StatelessWidget {
  const Neumorphism({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Neumorphism Screen'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: size.width * 0.8,
          height: size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 32, 32, 32),
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Color.fromARGB(255, 250, 242, 242),
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.android,
              color: Color(0xFF3DDC84),
              size: size.width * 0.7,
            ),
          ),
        ),
      ),
    );
  }
}
