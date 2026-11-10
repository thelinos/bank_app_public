import "package:bank_app/features/settings/components/personal_information_tile.dart"
    show PersonalInformationTile;
import "package:bank_app/shared/common/constants.dart" show Constants;
import "package:bank_app/shared/common/model/customer_static_data/customer_static_data_model.dart"
    show CustomerStaticDataModel, CustomerStaticDataX;
import "package:flutter/material.dart";

class const PersonalInformation({super.key}) extends StatelessWidget {
  CustomerStaticDataModel get _customerPersonalInformation =>
      Constants.customerTestData.customerStaticData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 8,
      children: [
        PersonalInformationTile(
          label: "FIRST NAME",
          information: _customerPersonalInformation.firstName,
        ),
        PersonalInformationTile(
          label: "OTHER NAME",
          information: _customerPersonalInformation.lastName,
        ),
        const PersonalInformationTile(
          label: "EMAIL",
          information: "test123@gmail.com",
        ),
      ],
    );
  }
}
