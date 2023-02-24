import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat_screen.dart';
import '../../widgets/widgets.dart';
import 'package:flutter_application_2/models/models.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final inactiveMatches = matches
        .where((match) => match.userId == 1 && match.chat!.isEmpty)
        .toList();
    final activeMatches = matches
        .where((match) => match.userId == 1 && match.chat!.isNotEmpty)
        .toList();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your Sport Buddies',
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: inactiveMatches.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      UserImageSmall(
                          imageUrl:
                              inactiveMatches[index].matchedUser.imageUrls[0]),
                      Text(
                        inactiveMatches[index].matchedUser.name,
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Text('Your Chats',
                style: Theme.of(context).textTheme.headlineMedium),
            ListView.builder(
              shrinkWrap: true,
              itemCount: activeMatches.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ChatScreen(userMatch: activeMatches[index])),
                    );
                  },
                  child: Row(
                    children: [
                      UserImageSmall(
                          imageUrl:
                              activeMatches[index].matchedUser.imageUrls[0]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(activeMatches[index].matchedUser.name,
                              style: Theme.of(context).textTheme.headlineSmall),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              activeMatches[index].chat![0].messages[0].message,
                              style: Theme.of(context).textTheme.headlineSmall),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              activeMatches[index]
                                  .chat![0]
                                  .messages[0]
                                  .timeString,
                              style: Theme.of(context).textTheme.headlineSmall),
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
