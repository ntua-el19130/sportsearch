import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/choice_button.dart';
import 'models/user_model.dart';
import 'package:flutter_application_2/models/models.dart';

class UsersScreens extends StatefulWidget {
  final User user;
  const UsersScreens({Key? key, required this.user}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<UsersScreens> createState() => _UsersScreensState(user: user);
}

class _UsersScreensState extends State<UsersScreens> {
  final User user;
  _UsersScreensState({required this.user}) : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Hero(
                    tag: 'user_image',
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: NetworkImage(user.imageUrls[0]),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.white,
                          icon: Icons.clear_rounded,
                        ),
                        ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 25,
                          color: Colors.white,
                          icon: Icons.sports_tennis_outlined,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name},${user.age}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  user.jobTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'About',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  user.bio,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        height: 2,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
