import 'package:chat_app/repository/user_repository.dart';
import 'package:flutter/foundation.dart';

class LoginViewModel extends ChangeNotifier {
  UserRepository repository;

  LoginViewModel(this.repository);

  bool isLogin = false;

  void login() {
    repository.login().then((user) {
      if (user != null) {
        isLogin = true;
      }
      notifyListeners();
    });
  }

  void logout() {
    repository.logout().whenComplete(() {
      isLogin = false;
      notifyListeners();
    });
  }
}
