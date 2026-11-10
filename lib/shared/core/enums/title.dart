
enum BankTitle {
  mr((remoteValue: "mr", localValue: "Mr.")),
  mrs((remoteValue: "mrs", localValue: "Mrs.")),
  miss((remoteValue: "miss", localValue: "Miss"));
  const BankTitle(this.titleRecord);

  final BankTitleRecord titleRecord;
}

extension BankTitleExtension on BankTitle {
  bool get isMr => this == BankTitle.mr;
  bool get isMrs => this == BankTitle.mrs;
  bool get isiMss => this == BankTitle.miss;
}


typedef BankTitleRecord = ({String remoteValue, String localValue});
