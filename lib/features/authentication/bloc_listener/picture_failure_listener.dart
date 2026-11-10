import "package:bank_app/features/customer_full_personal_info/bloc/customer_full_personal_info_bloc.dart";
import "package:bank_app/shared/core/extensions/build_context_x.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class PictureFailureListener extends BlocListener<CustomerFullPersonalInfoBloc,
    CustomerFullPersonalInfoState> {
  new({super.child})
      : super(
          listener: (context, state) {
            final errorMessage = state.picErrorMessage;
            if (errorMessage != null) {
              context.flutterNavigator.pop();

              context.showGenericSnackbar(
                text: errorMessage,
                backgroundColor: Colors.redAccent,
                borderColor: Colors.red,
              );
            }
          },
        );
}
