import 'package:flutter/material.dart';
import 'package:flutter_application_2/dashboard.dart';
import 'package:flutter_application_2/Add_Sport.dart';


class My_Sports_Page extends StatefulWidget {
  const My_Sports_Page({Key? key}) : super(key: key);

  @override
  State<My_Sports_Page> createState() => _MySportsPageState();
}

class _MySportsPageState extends State<My_Sports_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0BCFF),
      appBar: AppBar(
        title: const Text('My Sports'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(Icons.sports_football, size: 50),
                const SizedBox(width: 20),
                Text('Football', style: TextStyle(fontSize: 24)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(Icons.sports_basketball, size: 50),
                const SizedBox(width: 20),
                Text('Basketball', style: TextStyle(fontSize: 24)),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(Icons.directions_run, size: 50),
                const SizedBox(width: 20),
                Text('Running', style: TextStyle(fontSize: 24)),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const AddSportPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Add a New Sport',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
