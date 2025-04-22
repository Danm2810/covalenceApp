import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class CovalenceAppAuthUser {
  CovalenceAppAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<CovalenceAppAuthUser> covalenceAppAuthUserSubject =
    BehaviorSubject.seeded(CovalenceAppAuthUser(loggedIn: false));
Stream<CovalenceAppAuthUser> covalenceAppAuthUserStream() =>
    covalenceAppAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
