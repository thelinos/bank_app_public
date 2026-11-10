part of "customer_full_personal_info_bloc.dart";

@freezed
@immutable
sealed class CustomerFullPersonalInfoEvent
    with _$CustomerFullPersonalInfoEvent {
  const factory CustomerFullPersonalInfoEvent.authSubscriptionRequested() =
      _AuthSubscriptionRequested;

  const factory CustomerFullPersonalInfoEvent.submittingCustomerPic() =
      _SubmittingCustomerPic;

  const factory CustomerFullPersonalInfoEvent.setCustomerImage(
    String imageUrl,
  ) = _SetImageUrl;

  const factory CustomerFullPersonalInfoEvent.gettingPicture({
    CroppedFile? image,
  }) = _GettingPicture;

  const factory CustomerFullPersonalInfoEvent.pictureSelected() =
      _PictureSelected;

  const factory CustomerFullPersonalInfoEvent.pictureTaken() = _PictureTaken;
}
