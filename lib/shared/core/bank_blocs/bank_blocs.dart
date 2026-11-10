import "package:bank_app/features/authentication/bloc/authentication_bloc.dart";
import "package:bank_app/features/authentication/repository/authentication_repository.dart";
import "package:bank_app/features/customer_full_personal_info/bloc/customer_full_personal_info_bloc.dart";
import "package:bank_app/features/customer_full_personal_info/repository/customer_full_personal_info_repository.dart";
import "package:bank_app/features/customer_partial_personal_info/bloc/customer_partial_personal_info_bloc.dart";
import "package:bank_app/features/customer_partial_personal_info/repository/customer_partial_personal_info_repository.dart";
import "package:bank_app/features/images/repository/image_repository.dart";
import "package:bank_app/features/sign_in/bloc/sign_in_bloc.dart";
import "package:bank_app/features/sign_in/data/sign_in_data.dart"
    show SignInData;
import "package:bank_app/features/sign_in/repository/sign_in_repository.dart";
import "package:bank_app/features/sign_up_flow/sign_up/bloc/sign_up_bloc.dart";
import "package:bank_app/features/sign_up_flow/sign_up/repository/sign_up_repository.dart"
    show SignUpRepository;
import "package:bank_app/shared/app/bank_app.dart" show BankApp;
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_it/get_it.dart" show GetIt;
import "package:image_cropper/image_cropper.dart";
import "package:image_picker/image_picker.dart";

class BankBlocs extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthenticationRepository>(
          create: (context) => AuthenticationRepository(),
        ),
        RepositoryProvider<SignInRepository>(
          create: (context) =>
              SignInRepository(signInData: GetIt.I.get<SignInData>()),
        ),
        RepositoryProvider<SignUpRepository>(
          create: (context) => SignUpRepository(
            authenticationRepository: context.read<AuthenticationRepository>(),
          ),
        ),
        RepositoryProvider<CustomerFullPersonalInfoRepository>(
          create: (context) => CustomerFullPersonalInfoRepository(),
        ),
        RepositoryProvider<CustomerPartialPersonalInfoRepository>(
          create: (context) => CustomerPartialPersonalInfoRepository(),
        ),
        RepositoryProvider<ImageRepository>(
          create: (context) => ImageRepository(
            imagePicker: ImagePicker(),
            imageCropper: ImageCropper(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            create: (context) => AuthenticationBloc(
              authenticationRepository: context
                  .read<AuthenticationRepository>(),
            )..add(const AuthenticationEvent.authSubscriptionRequested()),
          ),
          BlocProvider<SignInBloc>(
            create: (context) => SignInBloc(
              signInRepository: context.read<SignInRepository>(),
              authenticationRepository: context
                  .read<AuthenticationRepository>(),
            )..add(const SignInEvent.authSubscriptionRequested()),
          ),
          BlocProvider<SignUpBloc>(
            create: (context) => SignUpBloc(
              signUpRepository: context.read<SignUpRepository>(),
              authenticationRepository: context
                  .read<AuthenticationRepository>(),
            )..add(const SignUpEvent.authSubscriptionRequested()),
          ),
          BlocProvider<CustomerPartialPersonalInfoBloc>(
            create: (context) =>
                CustomerPartialPersonalInfoBloc(
                  authenticationRepository: context
                      .read<AuthenticationRepository>(),
                  partialPersonalInfoRepository: context
                      .read<CustomerPartialPersonalInfoRepository>(),
                )..add(
                  const CustomerPartialPersonalInfoEvent.authSubscriptionRequested(),
                ),
          ),
          BlocProvider<CustomerFullPersonalInfoBloc>(
            create: (context) =>
                CustomerFullPersonalInfoBloc(
                  imageRepository: context.read<ImageRepository>(),
                  authenticationRepository: context
                      .read<AuthenticationRepository>(),
                  fullPersonalInfoRepository: context
                      .read<CustomerFullPersonalInfoRepository>(),
                )..add(
                  const CustomerFullPersonalInfoEvent.authSubscriptionRequested(),
                ),
          ),
        ],
        child: const BankApp(),
      ),
    );
  }
}
