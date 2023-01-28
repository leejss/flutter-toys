import "package:flutter/material.dart";

class TestMyApp extends StatelessWidget {
  const TestMyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Text("Click"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Text Button"),
                  ),
                  OutlinedButton(
                      onPressed: () {}, child: const Text("Outlined Button")),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Elevated Button")),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                  GestureDetector(
                    onTap: () {
                      print("TAP!");
                    },
                    onDoubleTap: () {
                      print("dobule tap!");
                    },
                    onLongPress: () {
                      print("Long press");
                    },
                    child: const Text("Gesture Detector"),
                  )
                ],
              ),
            )));
  }
}
