import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int variable = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$variable',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            const Text('Clicks', style: TextStyle(fontSize: 60))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(
          onPressed: () {
            setState(() {
              variable += 1; //Icons.exposure_minus_1
            });
          },
          child: const Icon(Icons.plus_one)),
          const SizedBox(height: 18),
           FloatingActionButton(
          onPressed: () {
            setState(() {
              if(variable>0){
              variable -= 1; //Icons.exposure_minus_1
              };          
          });
          },
          child: const Icon(Icons.exposure_minus_1)),
      ],)
    );
  }
}
