import "package:flutter/material.dart";

class TestApp2 extends StatelessWidget {
  const TestApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // width: 200,
          // height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.orange,
              border: Border.all(width: 10, color: Colors.blue)),
        ),
      ),
    );
  }
}
