typedef GenderRecord = ({String remoteValue, String localValue});

enum Gender {
  male((remoteValue: "M", localValue: "Male")),
  female((remoteValue: "F", localValue: "Female"));

  const Gender(this.genderRecord);

  final GenderRecord genderRecord;
}

extension GenderExtension on Gender {
  bool get isMale => this == Gender.male;
  bool get isFemale => this == Gender.female;
}
