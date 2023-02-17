import 'screen3.dart';
import 'dart:math' as Math;
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => Screen2State();
}

class Screen2State extends State<Screen2> with SingleTickerProviderStateMixin {
  late Image cardFront1;
  late Image cardBack1;
  bool showFront1 = true;
  late AnimationController controller;
  bool _showButton = false;

  @override
  void initState() {
    super.initState();

    cardFront1 = Image.network("https://ioe.hse.ru/data/2018/08/03/1152001746/3classroom.jpg", width: 100, height: 100, fit: BoxFit.fill);
    cardBack1  = Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKr5wT7rfkjkGvNeqgXjBmarC5ZNoZs-H2uMpML8O7Q4F9W-IlUQibBT6IPqyvX45NOgw&usqp=CAU", width: 100, height: 100, fit: BoxFit.fill);
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300), value: 0);

    var func = () async {
      await controller.forward();
      setState(() => showFront1 = !showFront1);
      await controller.reverse();
      setState(() {
        _showButton = true;
      });
    };
    func();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    precacheImage(cardFront1.image, context);
    precacheImage(cardBack1.image, context);
  }

  @override
  Widget build(BuildContext context) {
    SafeArea safeArea = SafeArea(
      child: Column(
        children: <Widget>[
          AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return Transform(
                transform: Matrix4.rotationX((controller.value) * Math.pi / 2),
                alignment: Alignment.center,
                child: Container(
                  child: showFront1 ? cardFront1 : cardBack1,
                ),
              );
            },
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Экран 2')),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: safeArea, flex: 1),
                Expanded(child: safeArea, flex: 1),
                Expanded(child: safeArea, flex: 1),
                Expanded(child: safeArea, flex: 1),
                Expanded(child: safeArea, flex: 1),
              ],
            ),
            Visibility(
              visible: _showButton,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: Text('Описание', style: TextStyle(fontSize: 20.0),),
                onPressed: () {
                  _navigateToNextScreen(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen3()));
  }
}