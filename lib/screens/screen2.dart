import 'screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Экран 2')),
      body: Center(
        child: Column(
          children: [
            Text('This is a new screen', style: TextStyle(fontSize: 24.0),),
            TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue
              ),
              child: Text('Описание', style: TextStyle(fontSize: 20.0),),
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
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen3()));
  }
}
