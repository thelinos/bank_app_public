import "package:flutter/foundation.dart";

@immutable
class User {
  const new({required this.uid, this.email, this.displayName});

  final String uid;
  final String? email;
  final String? displayName;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.uid == uid;
  }

  @override
  int get hashCode => uid.hashCode;

  @override
  String toString() =>
      "User(uid: $uid, email: $email, displayName: $displayName)";
}
