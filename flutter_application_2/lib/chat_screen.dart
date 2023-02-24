import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/models.dart';

class ChatScreen extends StatefulWidget {
  final UserMatch userMatch;
  const ChatScreen({Key? key, required this.userMatch}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreen(userMatch: userMatch);
}

class _ChatScreen extends State<ChatScreen> {
  final UserMatch userMatch;
  _ChatScreen({required this.userMatch}) : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.background,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Theme.of(context).primaryColor,
            ),
            title: Center(
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 15,
                      backgroundImage:
                          NetworkImage(userMatch.matchedUser.imageUrls[0])),
                  Text(
                    userMatch.matchedUser.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            )),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: userMatch.chat != null
                    ? Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: userMatch.chat![0].messages.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  title: userMatch.chat![0].messages[index]
                                              .senderId ==
                                          1
                                      ? Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0)),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .background,
                                            ),
                                            child: Text(
                                              userMatch.chat![0].messages[index]
                                                  .message,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge,
                                            ),
                                          ),
                                        )
                                      : Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                  radius: 15,
                                                  backgroundImage: NetworkImage(
                                                      userMatch.matchedUser
                                                          .imageUrls[0])),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(8.0)),
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                                child: Text(
                                                  userMatch.chat![0]
                                                      .messages[index].message,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge!
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ));
                            }),
                      )
                    : SizedBox(),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: 100,
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepPurpleAccent),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send_outlined),
                        color: Colors.grey,
                      )),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Type Here...',
                          contentPadding: EdgeInsets.only(
                            left: 20,
                            bottom: 5,
                            top: 5,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
