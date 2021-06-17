import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BookingAppFirebaseUser {
  BookingAppFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

BookingAppFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BookingAppFirebaseUser> bookingAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BookingAppFirebaseUser>(
            (user) => currentUser = BookingAppFirebaseUser(user));
