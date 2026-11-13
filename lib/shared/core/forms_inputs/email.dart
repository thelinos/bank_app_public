import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";

class Email extends FormzInput<String, EmailError> {
  const new pure({String value = ""}) : super.pure(value);

  const new dirty({String value = ""}) : super.dirty(value);

  static final _emailRegExp = RegExp(
    r"^[a-zA-Z\d.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z\d-]+(?:\.[a-zA-Z\d-]+)*$",
  );

  @override
  EmailError? validator(String value) {
    if (_emailRegExp.hasMatch(value)) {
      return null;
    } else if (value.isEmpty) {
      return EmailError.empty;
    } else {
      return EmailError.invalidEmail;
    }
  }
}

enum EmailError {
  invalidEmail(
    "The email is either invalid or does not contain the @ sign.",
  ),
  empty(null);

  new(this.message);
  final String? message;
}

class EmailConverter extends JsonConverter<Email, String> {
  const new();
  @override
  Email fromJson(String json) => Email.dirty(value: json);

  @override
  String toJson(Email object) => object.value;
}
