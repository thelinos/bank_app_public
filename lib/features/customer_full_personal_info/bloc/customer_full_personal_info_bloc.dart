import "dart:async";

import "package:bank_app/features/authentication/models/user.dart";
import "package:bank_app/features/authentication/repository/authentication_repository.dart";
import "package:bank_app/shared/common/model/customer/customer_model.dart";
import "package:bank_app/shared/common/model/customer_static_data/customer_static_data_model.dart";
import "package:bank_app/shared/core/bank_logger/bank_logger.dart";
import "package:bank_app/features/customer_full_personal_info/repository/customer_full_personal_info_repository.dart";
import "package:bank_app/features/images/repository/image_repository.dart";
import "package:bloc/bloc.dart";
import "package:bloc_concurrency/bloc_concurrency.dart";
import "package:fast_immutable_collections/fast_immutable_collections.dart" show IListConst;
import "package:formz/formz.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:image_cropper/image_cropper.dart";
import "package:image_picker/image_picker.dart";

part "customer_full_personal_info_bloc.freezed.dart";
part "customer_full_personal_info_event.dart";
part "customer_full_personal_info_state.dart";

class CustomerFullPersonalInfoBloc
    extends Bloc<CustomerFullPersonalInfoEvent, CustomerFullPersonalInfoState> {
  CustomerFullPersonalInfoBloc({
    required AuthenticationRepository authenticationRepository,
    required CustomerFullPersonalInfoRepository fullPersonalInfoRepository,
    required ImageRepository imageRepository,
  }) : _authenticationRepository = authenticationRepository,
       _fullPersonalInfoRepository = fullPersonalInfoRepository,
       _imageRepository = imageRepository,
       super(const _CustomerFullPersonalInfoState()) {
    on<_AuthSubscriptionRequested>(
      _onAuthSubscriptionRequested,
      transformer: droppable(),
    );
    on<_GettingPicture>(_onGettingCustomerPic, transformer: restartable());
    on<_SubmittingCustomerPic>(
      _onSubmittingCustomerPic,
      transformer: droppable(),
    );
    on<_SetImageUrl>(_onSettingCustomerImage, transformer: droppable());
    on<_PictureSelected>(_onPictureSelected, transformer: droppable());
    on<_PictureTaken>(_onPictureTaken, transformer: droppable());
  }

  final AuthenticationRepository _authenticationRepository;
  final CustomerFullPersonalInfoRepository _fullPersonalInfoRepository;
  final ImageRepository _imageRepository;

  FutureOr<void> _onAuthSubscriptionRequested(
    _AuthSubscriptionRequested event,
    Emitter<CustomerFullPersonalInfoState> emit,
  ) async {
    await emit.forEach(
      _authenticationRepository.onUserChanges,
      onData: (user) {
        return state.copyWith(user: user);
      },
      onError: (error, stackTrace) {
        BankLogger.fatal(
          "_AuthSubscriptionRequested Error",
          error: error,
          stackTrace: stackTrace,
        );

        return state.copyWith(errorMessage: error.toString());
      },
    );
  }

  FutureOr<void> _onPictureTaken(
    _PictureTaken event,
    Emitter<CustomerFullPersonalInfoState> emit,
  ) async {
    final picture = await _imageRepository.takeAndCropPicture;
    if (picture == null) {
      emit(
        state.copyWith(
          picErrorMessage:
              "Please make sure you either select or take a picture",
        ),
      );
    } else {
      emit(state.copyWith(customerPic: picture));
    }
  }

  FutureOr<void> _onPictureSelected(
    _PictureSelected event,
    Emitter<CustomerFullPersonalInfoState> emit,
  ) async {
    final picture = await _imageRepository.selectAndCropPicture;
    if (picture == null) {
      emit(
        state.copyWith(
          picErrorMessage:
              "Please make sure you either select or take a picture",
        ),
      );
    } else {
      emit(state.copyWith(customerPic: picture));
    }
  }

  FutureOr<void> _onGettingCustomerPic(
    _GettingPicture event,
    Emitter<CustomerFullPersonalInfoState> emit,
  ) async {
    final picture = event.image;
    if (picture == null) {
      emit(
        state.copyWith(
          picErrorMessage:
              "Please make sure you either select or take a picture",
        ),
      );
    } else {
      emit(state.copyWith(customerPic: picture));
    }
  }

  FutureOr<void> _onSubmittingCustomerPic(
    _SubmittingCustomerPic event,
    Emitter<CustomerFullPersonalInfoState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final result = await _fullPersonalInfoRepository.saveUserImage(
      userID: state.user!.uid,
      image: XFile(state.customerPic!.path),
    );

    result.when(
      (success) {
        add(_SetImageUrl(success));
      },
      (error) {
        emit(state.copyWith(errorMessage: error));
      },
    );
  }

  FutureOr<void> _onSettingCustomerImage(
    _SetImageUrl event,
    Emitter<CustomerFullPersonalInfoState> emit,
  ) async {
    final imageUrl = event.imageUrl;

    final result = await _fullPersonalInfoRepository.updateCustomerImage(
      userID: state.user!.uid,
      // customer: CustomerModel(
      //   customerStaticData: CustomerStaticDataModel(imageUrl: imageUrl),
      //   customerTransactionData: IListConst([]),
      // ),
    );

    result.when(
      (success) {
        emit(state.copyWith(status: FormzSubmissionStatus.success));
      },
      (error) {
        emit(
          state.copyWith(
            errorMessage: error,
            status: FormzSubmissionStatus.failure,
          ),
        );
      },
    );
  }

  @override
  void onTransition(
    Transition<CustomerFullPersonalInfoEvent, CustomerFullPersonalInfoState>
    transition,
  ) {
    super.onTransition(transition);
    BankLogger.trace("CustomerFullPersonalInfoBloc $transition");
  }
}
