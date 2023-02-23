import 'package:flutter_application_2/login_page.dart';
import 'package:flutter/material.dart';
import 'models/user_model.dart';

class UsersScreens extends StatefulWidget {
  const UsersScreens({super.key});

  @override
  State<UsersScreens> createState() => _UsersScreensState();
}

class _UsersScreensState extends State<UsersScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox(
        height: MediaQuery.of(context).size.height / 2,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: NetworkImage(User.users[0].imageUrls[0]),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
