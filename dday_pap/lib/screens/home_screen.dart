import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime firstDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            top: true,
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _DDay(
                  onPressed: onPressed,
                  firstDay: firstDay,
                ),
                _ImageWidget()
              ],
            )));
  }

  void onPressed() {
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: 300,
              child: CupertinoDatePicker(
                  initialDateTime: firstDay,
                  maximumDate: firstDay,
                  onDateTimeChanged: (DateTime date) {
                    setState(() {
                      firstDay = date;
                    });
                  },
                  mode: CupertinoDatePickerMode.date),
            ),
          );
        });
  }
}

class _DDay extends StatelessWidget {
  final GestureTapCallback onPressed;
  final DateTime firstDay;

  const _DDay({required this.onPressed, required this.firstDay});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        Text(
          "D-DAY",
          style: textTheme.displayLarge,
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          "${firstDay.year}.${firstDay.month}.${firstDay.day}",
          style: textTheme.displayMedium,
        ),
        const SizedBox(
          height: 16.0,
        ),
        IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.ac_unit,
              color: Colors.black,
            )),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          "D+${DateTime(now.year, now.month, now.day).difference(firstDay).inDays + 1}",
          style: textTheme.bodyMedium,
        )
      ],
    );
  }
}

class _ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/img/img.jpg',
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
