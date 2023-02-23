import 'package:flutter/material.dart';
import 'package:flutter_application_2/users_screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_2/blocs/swipe_bloc.dart';

import 'package:flutter_application_2/models/user_model.dart';
import 'package:flutter_application_2/widgets/user_card.dart';
import 'package:flutter_application_2/widgets/widgets.dart';

class FindFriends extends StatefulWidget {
  const FindFriends({Key? key}) : super(key: key);

  @override
  _FindFriendsState createState() => _FindFriendsState();
}

class _FindFriendsState extends State<FindFriends> {
  late SwipeBloc _swipeBloc;

  @override
  void initState() {
    super.initState();
    _swipeBloc = SwipeBloc()..add(LoadUsers(users: User.users));
  }

  @override
  void dispose() {
    _swipeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Friends!'),
      ),
      body: BlocConsumer<SwipeBloc, SwipeState>(
        bloc: _swipeBloc,
        listener: (context, state) {
          if (state is SwipeLoaded && state.users.isEmpty) {
            // If there are no more users, show an alert dialog
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('No more users!'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is SwipeLoading) {
            // Show a loading indicator while the users are being loaded
            return const Center(child: CircularProgressIndicator());
          } else if (state is SwipeLoaded) {
            // Show the user card if there are users to swipe
            return Column(
              children: [
                Draggable(
                  feedback: UserCard(user: state.users[0]),
                  childWhenDragging: UserCard(user: state.users[1]),
                  onDragEnd: (drag) {
                    if (drag.velocity.pixelsPerSecond.dx < 0) {
                      _swipeBloc.add(SwipeLeft(user: state.users[0]));
                    } else {
                      _swipeBloc.add(SwipeRight(user: state.users[0]));
                    }
                  },
                  child: UserCard(user: state.users[0]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 3.0,
                    horizontal: 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          _swipeBloc.add(SwipeLeft(user: state.users[0]));
                        },
                        child: const ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.white,
                          icon: Icons.clear_rounded,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const UsersScreens();
                              },
                            ),
                          );
                        },
                        child: const ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.white,
                          icon: Icons.info_outline,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _swipeBloc.add(SwipeLeft(user: state.users[0]));
                        },
                        child: const ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.white,
                          icon: Icons.favorite,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            // Show an error message if something goes wrong
            return const Center(child: Text('Something went wrong!'));
          }
        },
      ),
    );
  }
}
