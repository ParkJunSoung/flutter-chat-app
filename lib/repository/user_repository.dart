import 'package:chat_app/model/chat_user.dart';

abstract class UserRepository {
  Future<ChatUser?> login();

  Future<void> logout();
}