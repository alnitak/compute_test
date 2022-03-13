import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final stopwatch = Stopwatch();
  final count = 5000000000;
  static const maxThread = 28;
  List<String> text = List.generate(maxThread, (index) => '');

  static int loop(int val) {
    int count = 0;
    for (int i = 1; i <= val; i++) {
      count += i;
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                List.generate(maxThread, (index) => Text('${text[index]}'))
                    .toList()),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [

          ...List<Widget>.generate(
              5,
              (index) => FloatingActionButton(
                    onPressed: () async {
                      await _startLoop(index+1);
                    },
                    child: Text('${index + 1}'),
                  )).toList(),

          const SizedBox(width: 30),

          FloatingActionButton(
            onPressed: () async {
              for (int i = 1; i <= maxThread; i++) {
                await _startLoop(i);
                // await Future.delayed(const Duration(milliseconds: 500));
              }
            },
            child: const Text('all'),
          ),

        ],
      ),
    );
  }

  _startLoop(int n) async {
    List<Future<int>> futures =
        List.generate(n, (index) => compute(loop, count));
    stopwatch.reset();
    stopwatch.start();
    await Future.wait(futures);
    text[n - 1] =
        '$n thread(s) ms: ' + stopwatch.elapsed.inMilliseconds.toString();
    stopwatch.stop();
    print(text[n - 1]);
    setState(() {});
  }
}
