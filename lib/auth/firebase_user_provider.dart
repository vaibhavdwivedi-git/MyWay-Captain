import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MyWayCaptainFirebaseUser {
  MyWayCaptainFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MyWayCaptainFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MyWayCaptainFirebaseUser> myWayCaptainFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MyWayCaptainFirebaseUser>(
      (user) {
        currentUser = MyWayCaptainFirebaseUser(user);
        return currentUser!;
      },
    );
