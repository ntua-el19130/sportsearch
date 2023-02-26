import 'package:flutter/material.dart';

class CreateTeamPage extends StatefulWidget {
  const CreateTeamPage({Key? key}) : super(key: key);

  @override
  _CreateTeamPageState createState() => _CreateTeamPageState();
}

class _CreateTeamPageState extends State<CreateTeamPage> {
  String? _selectedSport;
  String? _teamName;
  String? _teamDescription;

  final _formKey = GlobalKey<FormState>();

  void _createTeam() {
    if (_formKey.currentState!.validate()) {
      // TODO: Implement team creation logic
      print('Creating team:');
      print('Sport: $_selectedSport');
      print('Name: $_teamName');
      print('Description: $_teamDescription');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD0BCFF),
      appBar: AppBar(
        title: const Text('Create Team'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose a sport:',
                style: Theme.of(context).textTheme.headline6,
              ),
              DropdownButtonFormField<String>(
                value: _selectedSport,
                onChanged: (value) {
                  setState(() {
                    _selectedSport = value;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: 'Football',
                    child: Text('Football'),
                  ),
                  DropdownMenuItem(
                    value: 'Basketball',
                    child: Text('Basketball'),
                  ),
                  DropdownMenuItem(
                    value: 'Tennis',
                    child: Text('Tennis'),
                  ),
                  DropdownMenuItem(
                    value: 'Volleyball',
                    child: Text('Volleyball'),
                  ),
                  DropdownMenuItem(
                    value: 'Running',
                    child: Text('Running'),
                  ),
                ],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Select a sport',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a sport';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Text(
                'Describe your team:',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Team Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a team name';
                  }
                  return null;
                },
                onChanged: (value) {
                  _teamName = value;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Team Description',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a team description';
                  }
                  return null;
                },
                onChanged: (value) {
                  _teamDescription = value;
                },
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: _createTeam,
                child: Text('Create Team'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
