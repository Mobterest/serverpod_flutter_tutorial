import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class UserEndpoint extends Endpoint {
  Future<User> createUser(Session session, User user) async {
    await User.insert(session, user);
    return user;
  }

  Future<User?> getUserById(Session session, {required int userId}) async {
    User? user = await User.findById(session, userId);
    return user;
  }

  Future<User?> checkUserExists(Session session, User existinguser) async {
    User? user = await User.findSingleRow(session,
        where: (u) =>
            u.email.equals(existinguser.email) &
            u.password.equals(existinguser.password));

    return user;
  }
}
