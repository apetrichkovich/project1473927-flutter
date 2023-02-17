import 'screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key, required this.title});

  final String title;

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://ioe.hse.ru/data/2018/08/03/1152001746/3classroom.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Какое ваше имя?',
                style: TextStyle(backgroundColor: Colors.black54, color: Colors.white),
              ),
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Имя',
                    hintText: 'Введите ваше имя',
                    filled: true,
                    fillColor: Colors.white,
                  )),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue
                ),
                child: Text('OK', style: TextStyle(fontSize: 20.0),),
                onPressed: () {
                  _navigateToNextScreen(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen2()));
  }
}