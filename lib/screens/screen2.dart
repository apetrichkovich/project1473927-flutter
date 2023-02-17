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
            Row(
              children: [
                Expanded(child: Image(width: 100, image: NetworkImage('https://ioe.hse.ru/data/2018/08/03/1152001746/3classroom.jpg'), fit: BoxFit.fill), flex: 1),
                Expanded(child: Image(width: 100, image: NetworkImage('https://ioe.hse.ru/data/2018/08/03/1152001746/3classroom.jpg'), fit: BoxFit.fill), flex: 1),
                Expanded(child: Image(width: 100, image: NetworkImage('https://ioe.hse.ru/data/2018/08/03/1152001746/3classroom.jpg'), fit: BoxFit.fill), flex: 1),
                Expanded(child: Image(width: 100, image: NetworkImage('https://ioe.hse.ru/data/2018/08/03/1152001746/3classroom.jpg'), fit: BoxFit.fill), flex: 1),
                Expanded(child: Image(width: 100, image: NetworkImage('https://ioe.hse.ru/data/2018/08/03/1152001746/3classroom.jpg'), fit: BoxFit.fill), flex: 1),
              ],
            ),
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
