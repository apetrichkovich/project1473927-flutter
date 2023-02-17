import 'screen1.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Экран 3')),
      body: Center(
        child: Column(
          children: [
            Text('Описание 1', style: TextStyle(fontSize: 24.0),),
            Text('Описание 2', style: TextStyle(fontSize: 24.0),),
            Text('Описание 3', style: TextStyle(fontSize: 24.0),),
            Text('Описание 4', style: TextStyle(fontSize: 24.0),),
            Text('Описание 5', style: TextStyle(fontSize: 24.0),),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue
              ),
              child: Text('Ещё раз', style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                _navigateToNextScreen(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen1(title: 'Экран 1',)));
  }
}
