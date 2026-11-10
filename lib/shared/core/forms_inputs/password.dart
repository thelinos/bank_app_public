import "package:formz/formz.dart";

class Password extends FormzInput<String, PasswordError> {
  const Password.pure({String value = ""}) : super.pure(value);

  const Password.dirty({String value = ""}) : super.dirty(value);

  static final _passwordRegExp = RegExp(
    r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",
  );

  @override
  PasswordError? validator(String value) {
    if (_passwordRegExp.hasMatch(value)) {
      return null;
    } else if (value.isEmpty) {
      return PasswordError.empty;
    }else if (value.length < 8) {
      return PasswordError.mustBeAtLeastEightCharacters;
    }  else {
      return PasswordError.anUnknownErrorHappened;
    }
  }
}

enum PasswordError {
  empty(null),
  mustBeAtLeastEightCharacters(
    "The password must be at least 8 characters in length",
  ),
  anUnknownErrorHappened("Something unexpected happened");

  const PasswordError(this.message);
  final String? message;
}
