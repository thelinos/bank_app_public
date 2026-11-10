import 'package:test/test.dart';
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';

/// tests for AuthenticationApi
void main() {
  final instance = KennedyMegaBankApi(
    basePathOverride: r'http://localhost:3000/',
  ).getAuthenticationApi();

  group(AuthenticationApi, () {
    // Register a user
    //
    //Future<CreatedUser> authenticationCreateUserPost(EmailPasswordRequest emailPasswordRequest) async
    test('test authenticationCreateUserPost', () async {
      final createdUserRequest = EmailPasswordRequest(
        email: "test@emailtest.com",
        password: "test1234567890",
      );
      final createdUserResponse = await instance.authenticationCreateUserPost(
        emailPasswordRequest: createdUserRequest,
      );
    });

    // Request a password reset email
    //
    // Returns a generic success response whether or not an account exists for the email.
    //
    //Future<MessageResponse> authenticationForgotPasswordPost(EmailRequest emailRequest) async
    test('test authenticationForgotPasswordPost', () async {
      // TODO
    });

    // Complete Google OAuth authentication
    //
    //Future authenticationGoogleCallbackGet(String state) async
    test('test authenticationGoogleCallbackGet', () async {
      // TODO
    });

    // Start Google OAuth authentication
    //
    //Future authenticationGoogleGet() async
    test('test authenticationGoogleGet', () async {
      // TODO
    });

    // Log in with email and password
    //
    //Future<CreatedUser> authenticationLoginPost(EmailPasswordRequest emailPasswordRequest) async
    test('test authenticationLoginPost', () async {
      // TODO
    });

    // Log out and clear authentication cookies
    //
    //Future<MessageResponse> authenticationLogoutPost() async
    test('test authenticationLogoutPost', () async {
      // TODO
    });

    // Get the current authenticated user and accounts
    //
    //Future<UserEnvelope> authenticationMeGet() async
    test('test authenticationMeGet', () async {
      // TODO
    });

    // Send a one-time password to a phone number
    //
    //Future<OtpSentResponse> authenticationPhoneSendOtpPost(SendOtpRequest sendOtpRequest) async
    test('test authenticationPhoneSendOtpPost', () async {
      // TODO
    });

    // Verify a phone OTP and authenticate the user
    //
    //Future<UserEnvelope> authenticationPhoneVerifyOtpPost(VerifyOtpRequest verifyOtpRequest) async
    test('test authenticationPhoneVerifyOtpPost', () async {
      // TODO
    });

    // Rotate the refresh token and issue new authentication cookies
    //
    //Future<UserEnvelope> authenticationRefreshPost() async
    test('test authenticationRefreshPost', () async {
      // TODO
    });

    // Set a new password using a reset token
    //
    //Future<MessageResponse> authenticationResetPasswordPost(ResetPasswordRequest resetPasswordRequest) async
    test('test authenticationResetPasswordPost', () async {
      // TODO
    });

    // Send an email verification link
    //
    //Future<MessageResponse> authenticationSendVerificationEmailPost(EmailRequest emailRequest) async
    test('test authenticationSendVerificationEmailPost', () async {
      // TODO
    });

    // Verify an email address using its token
    //
    //Future<MessageResponse> authenticationVerifyEmailGet(String token) async
    test('test authenticationVerifyEmailGet', () async {
      // TODO
    });
  });
}
