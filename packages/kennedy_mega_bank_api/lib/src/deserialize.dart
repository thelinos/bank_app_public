import "package:kennedy_mega_bank_api/src/model/account_envelope.dart";
import "package:kennedy_mega_bank_api/src/model/account_envelope_account.dart";
import "package:kennedy_mega_bank_api/src/model/create_account_request.dart";
import "package:kennedy_mega_bank_api/src/model/create_transaction_request.dart";
import "package:kennedy_mega_bank_api/src/model/created_user.dart";
import "package:kennedy_mega_bank_api/src/model/email_password_request.dart";
import "package:kennedy_mega_bank_api/src/model/email_request.dart";
import "package:kennedy_mega_bank_api/src/model/error_response.dart";
import "package:kennedy_mega_bank_api/src/model/health_get200_response.dart";
import "package:kennedy_mega_bank_api/src/model/message_response.dart";
import "package:kennedy_mega_bank_api/src/model/name_request.dart";
import "package:kennedy_mega_bank_api/src/model/name_update_request.dart";
import "package:kennedy_mega_bank_api/src/model/otp_sent_response.dart";
import "package:kennedy_mega_bank_api/src/model/profile_picture_request.dart";
import "package:kennedy_mega_bank_api/src/model/reset_password_request.dart";
import "package:kennedy_mega_bank_api/src/model/send_otp_request.dart";
import "package:kennedy_mega_bank_api/src/model/transaction_envelope.dart";
import "package:kennedy_mega_bank_api/src/model/transaction_envelope_transaction.dart";
import "package:kennedy_mega_bank_api/src/model/user_envelope.dart";
import "package:kennedy_mega_bank_api/src/model/verify_otp_request.dart";

final _regList = RegExp(r"^List<(.*)>$");
final _regSet = RegExp(r"^Set<(.*)>$");
final _regMap = RegExp(r"^Map<String,(.*)>$");

ReturnType deserialize<ReturnType, BaseType>(
  dynamic value,
  String targetType, {
  bool growable = true,
}) {
  switch (targetType) {
    case "String":
      return "$value" as ReturnType;
    case "int":
      return (value is int ? value : int.parse("$value")) as ReturnType;
    case "bool":
      if (value is bool) {
        return value as ReturnType;
      }
      final valueString = "$value".toLowerCase();
      return (valueString == "true" || valueString == "1") as ReturnType;
    case "double":
      return (value is double ? value : double.parse("$value")) as ReturnType;
    case "AccountEnvelope":
      return AccountEnvelope.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "AccountEnvelopeAccount":
      return AccountEnvelopeAccount.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "CreateAccountRequest":
      return CreateAccountRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "CreateTransactionRequest":
      return CreateTransactionRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "CreatedUser":
      return CreatedUser.fromJson(value as Map<String, dynamic>) as ReturnType;
    case "EmailPasswordRequest":
      return EmailPasswordRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "EmailRequest":
      return EmailRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
    case "ErrorResponse":
      return ErrorResponse.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "HealthGet200Response":
      return HealthGet200Response.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "MessageResponse":
      return MessageResponse.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "NameRequest":
      return NameRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
    case "NameUpdateRequest":
      return NameUpdateRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "OtpSentResponse":
      return OtpSentResponse.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "ProfilePictureRequest":
      return ProfilePictureRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "ResetPasswordRequest":
      return ResetPasswordRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "SendOtpRequest":
      return SendOtpRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "TransactionEnvelope":
      return TransactionEnvelope.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    case "TransactionEnvelopeTransaction":
      return TransactionEnvelopeTransaction.fromJson(
            value as Map<String, dynamic>,
          )
          as ReturnType;
    case "UserEnvelope":
      return UserEnvelope.fromJson(value as Map<String, dynamic>) as ReturnType;
    case "VerifyOtpRequest":
      return VerifyOtpRequest.fromJson(value as Map<String, dynamic>)
          as ReturnType;
    default:
      RegExpMatch? match;

      if (value is List && (match = _regList.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
                .map<BaseType>(
                  (dynamic v) => deserialize<BaseType, BaseType>(
                    v,
                    targetType,
                    growable: growable,
                  ),
                )
                .toList(growable: growable)
            as ReturnType;
      }
      if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
        targetType = match![1]!; // ignore: parameter_assignments
        return value
                .map<BaseType>(
                  (dynamic v) => deserialize<BaseType, BaseType>(
                    v,
                    targetType,
                    growable: growable,
                  ),
                )
                .toSet()
            as ReturnType;
      }
      if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
        targetType = match![1]!.trim(); // ignore: parameter_assignments
        return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map(
                (dynamic v) => deserialize<BaseType, BaseType>(
                  v,
                  targetType,
                  growable: growable,
                ),
              ),
            )
            as ReturnType;
      }
  }
  throw Exception("Cannot deserialize");
}
