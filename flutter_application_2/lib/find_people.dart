import 'package:flutter/material.dart';
import 'package:flutter_application_2/find_friends.dart';
import 'package:flutter_application_2/find_teams.dart';

class FindPeople extends StatelessWidget {
  const FindPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 300,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Color(0xffD0BCFF)),
                  icon: Icon(Icons.person, color: Colors.black, size: 50),
                  label: Text(
                    'Find Friends!',
                    style: TextStyle(color: Colors.black, fontSize: 21),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FindFriends()),
                    );
                  },
                ),
              ),
              Container(
                height: 1,
                color: Colors.black,
              ),
              SizedBox(
                height: 300,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(primary: Color(0xffD0BCFF)),
                  icon: Icon(Icons.people, color: Colors.black, size: 50),
                  label: Text(
                    'Find Teams!',
                    style: TextStyle(color: Colors.black, fontSize: 21),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FindTeams()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
