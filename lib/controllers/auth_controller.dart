
import '../models/user_model.dart';

class AuthController {
  static UserModel? registeredUser;

  static bool register(UserModel user) {
    registeredUser = user;
    return true;
  }

  static bool login(String email, String password) {
    return registeredUser != null &&
        registeredUser!.email == email &&
        registeredUser!.password == password;
  }
}
