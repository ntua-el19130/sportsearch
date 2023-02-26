import 'package:flutter/material.dart';
import 'package:flutter_application_2/add_teams.dart';

class MyTeamsPage extends StatelessWidget {
  const MyTeamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffD0BCFF),
      appBar: AppBar(
        title: const Text('My Teams'),
      ),
      body: ListView(
        children: [
          _buildTeamItem('Tigers', Icons.sports_basketball),
          _buildTeamItem('Bulls', Icons.sports_football),
          _buildTeamItem('Eagles', Icons.sports_volleyball),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton.icon(
              onPressed: () {  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddTeams()),
                    );},
              icon: const Icon(Icons.add),
              label: const Text('Add a Team'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamItem(String name, IconData icon) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name),
    );
  }
}
