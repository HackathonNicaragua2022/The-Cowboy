import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ToolsSchoolFirebaseUser {
  ToolsSchoolFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ToolsSchoolFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ToolsSchoolFirebaseUser> toolsSchoolFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ToolsSchoolFirebaseUser>(
      (user) {
        currentUser = ToolsSchoolFirebaseUser(user);
        return currentUser!;
      },
    );
