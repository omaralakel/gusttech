import 'package:meta/meta.dart';

@immutable
class MessageData {
  const MessageData({
    required this.senderName,
    required this.message,
    required this.messageData,
    required this.dateMessage,
    required this.profilePicture});
  
  final String senderName;
  final String message;
  final DateTime messageData;
  final String dateMessage;
  final String profilePicture;

}