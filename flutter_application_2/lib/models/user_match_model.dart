import 'package:equatable/equatable.dart';
import 'package:flutter_application_2/models/models.dart';

class UserMatch extends Equatable {
  final int id;
  final int userId;
  final User matchedUser;
  final List<Chat>? chat;

  const UserMatch(
      {required this.id,
      required this.userId,
      required this.matchedUser,
      required this.chat});

  @override
  List<Object?> get props => [id, userId, matchedUser];
}

List<UserMatch> matches = [
  UserMatch(
    id: 1,
    userId: 1,
    matchedUser: User.users[1],
    chat: chats
        .where((chat) => chat.userId == 1 && chat.matchedUserId == 2)
        .toList(),
  )
];
