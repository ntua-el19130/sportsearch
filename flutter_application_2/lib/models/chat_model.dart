import 'package:equatable/equatable.dart';
import 'package:flutter_application_2/models/models.dart';

class Chat extends Equatable {
  final int id;
  final int userId;
  final int matchedUserId;
  final List<Message> messages;

  Chat(
      {required this.id,
      required this.userId,
      required this.matchedUserId,
      required this.messages});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        userId,
        matchedUserId,
        messages,
      ];
}

List<Chat> chats = [
  Chat(
    id: 1,
    userId: 1,
    matchedUserId: 2,
    messages: messages
        .where((message) =>
            (message.senderId == 1 && message.receiverId == 2) ||
            (message.senderId == 2 && message.receiverId == 1))
        .toList(),
  )
];
