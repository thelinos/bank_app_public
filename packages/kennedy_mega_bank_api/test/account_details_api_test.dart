import 'package:test/test.dart';
import 'package:kennedy_mega_bank_api/kennedy_mega_bank_api.dart';

/// tests for AccountDetailsApi
void main() {
  final instance = KennedyMegaBankApi().getAccountDetailsApi();
  final tryTest = KennedyMegaBankApi().getAuthenticationApi();

  group(AccountDetailsApi, () {
    // Add a name to the current user profile
    //
    //Future<UserEnvelope> accountDetailsCollectNamePost(NameRequest nameRequest) async
    test('test accountDetailsCollectNamePost', () async {
      // TODO
    });

    // Add a profile picture to the current user profile
    //
    //Future<UserEnvelope> accountDetailsCollectProfilePicturePost(ProfilePictureRequest profilePictureRequest) async
    test('test accountDetailsCollectProfilePicturePost', () async {
      // TODO
    });

    // Update one or more name fields
    //
    //Future<UserEnvelope> accountDetailsUpdateNamePatch(NameUpdateRequest nameUpdateRequest) async
    test('test accountDetailsUpdateNamePatch', () async {
      // TODO
    });

    // Update the current user profile picture
    //
    //Future<UserEnvelope> accountDetailsUpdateProfilePicturePatch(ProfilePictureRequest profilePictureRequest) async
    test('test accountDetailsUpdateProfilePicturePatch', () async {
      // TODO
    });
  });
}
