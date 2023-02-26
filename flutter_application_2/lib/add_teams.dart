import 'package:flutter/material.dart';
import 'package:flutter_application_2/Create_Team_Page.dart';
import 'package:flutter_application_2/Find_Teams.dart';

class AddTeams extends StatelessWidget {
  const AddTeams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 101, 182),
      appBar: AppBar(
        title: const Text('Add Teams'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const CreateTeamPage();
                      },
                    ),
                  );},
                    child: const Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                      primary: const Color(0XFF4f378b),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Create a new Team',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () {Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const FindTeams();
                      },
                    ),
                  );},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'image/logo3.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Join an Existing Team',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

