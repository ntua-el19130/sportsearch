import 'package:flutter/material.dart';

class FindTeams extends StatefulWidget {
  const FindTeams({Key? key}) : super(key: key);

  @override
  _FindTeamsState createState() => _FindTeamsState();
}

class _FindTeamsState extends State<FindTeams> {
  double _minTrustScore = 0;
  double _minSkillScore = 0;
  double _minFunScore = 0;
  double _minNumPeopleJoined = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0BCFF),
      appBar: AppBar(
        title: Text('Search For Teams'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButton<String>(
              items: <String>[
                'Football',
                'Basketball',
                'Tennis',
                'Volleyball',
                'Running'
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              hint: Text('Choose a sport'),
              isExpanded: true,
            ),
            SizedBox(height: 24.0),
            Text('Minimum Average Member Trust Score'),
            Slider(
              value: _minTrustScore,
              onChanged: (value) {
                setState(() {
                  _minTrustScore = value;
                });
              },
              min: 0,
              max: 10,
              divisions: 10,
              label: _minTrustScore.round().toString(),
            ),
            Text('Minimum Average Member Skill Score'),
            Slider(
              value: _minSkillScore,
              onChanged: (value) {
                setState(() {
                  _minSkillScore = value;
                });
              },
              min: 0,
              max: 10,
              divisions: 10,
              label: _minSkillScore.round().toString(),
            ),
            Text('Minimum Average Member Fun Score'),
            Slider(
              value: _minFunScore,
              onChanged: (value) {
                setState(() {
                  _minFunScore = value;
                });
              },
              min: 0,
              max: 10,
              divisions: 10,
              label: _minFunScore.round().toString(),
            ),
            Text('Minimum Number of People Joined'),
            Slider(
              value: _minNumPeopleJoined,
              onChanged: (value) {
                setState(() {
                  _minNumPeopleJoined = value;
                });
              },
              min: 0,
              max: 10,
              divisions: 10,
              label: _minNumPeopleJoined.round().toString(),
            ),
            ElevatedButton(
              onPressed: () {
                // Add onPressed functionality here
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0XFF4f378b),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                minimumSize: const Size(double.infinity, 0),
              ),
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
