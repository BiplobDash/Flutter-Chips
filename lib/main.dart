import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChipApp(),
    );
  }
}

class ChipApp extends StatefulWidget {
  const ChipApp({super.key});

  @override
  State<ChipApp> createState() => _ChipAppState();
}

class _ChipAppState extends State<ChipApp> {
  int tag = 1;
  List<String> tags = [];
  List<String> options = [
    'Blog',
    'News',
    'Politics',
    'Beauty',
    'Technology',
    'Flutter',
    'Dart',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter chips tags'),
      ),
      body: Column(
        children: [
          ChipsChoice.single(
            value: tag,
            onChanged: (val) => setState(() => tag = val),
            choiceItems: C2Choice.listFrom(
              source: options,
              value: (i, v) => i,
              label: (i, v) => v,
            ),
            choiceCheckmark: true,
            choiceStyle: C2ChipStyle.filled(
              selectedStyle: const C2ChipStyle(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
            // choiceStyle: const C2ChipStyle(
            //   backgroundColor: Colors.blue,
            //   borderColor: Colors.blue,
            //   borderRadius: BorderRadius.all(Radius.circular(5),),

            // ),
            wrapped: true,
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
    );
  }
}
