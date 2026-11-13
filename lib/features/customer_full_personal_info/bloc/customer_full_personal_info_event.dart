part of "customer_full_personal_info_bloc.dart";

@freezed
@immutable
sealed class CustomerFullPersonalInfoEvent
    with _$CustomerFullPersonalInfoEvent {
  const factory authSubscriptionRequested() =
      _AuthSubscriptionRequested;

  const factory submittingCustomerPic() =
      _SubmittingCustomerPic;

  const factory setCustomerImage(
    String imageUrl,
  ) = _SetImageUrl;

  const factory gettingPicture({
    CroppedFile? image,
  }) = _GettingPicture;

  const factory pictureSelected() =
      _PictureSelected;

  const factory pictureTaken() = _PictureTaken;
}
