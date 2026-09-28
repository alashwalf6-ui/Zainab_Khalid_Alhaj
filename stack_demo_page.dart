import 'package:flutter/material.dart';

class StackDemoPage extends StatelessWidget {
  const StackDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('(Stack) تداخل العناصر'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 150,
          child: Stack(
            alignment: Alignment.center,
            children: [

              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  size: 40,
                  color: Colors.lightBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}