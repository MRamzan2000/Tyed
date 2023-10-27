class SignUpModel {
  String? userFirstName;
  String? userLastName;
  String? userEmail;
  String? userPhoneNumber;
  String? userAddress;
  String? userDOB;
  String? userPassword;
  DateTime? timeStamp;

  SignUpModel(
      {this.userFirstName,
      this.userLastName,
      this.userEmail,
      this.userPhoneNumber,
      this.userAddress,
      this.userDOB,
      this.userPassword,
        this.timeStamp
     });

  SignUpModel.fromJson(Map<String, Object?> json)
      : this(
          userFirstName: json['firstName'] as String,
          userLastName: json['lastName'] as String,
          userEmail: json['email'] as String,
          userPhoneNumber: json['phoneNumber'] as String,
          userAddress: json['address'] as String,
          userDOB: json['dOB'] as String,
          userPassword: json['password'] as String,
          timeStamp: json['timeStamp'] as DateTime,
        );

  Map<String, Object?> toJson() {
    return {
      'firstName': userFirstName,
      'lastName': userLastName,
      'email': userEmail,
      'phoneNumber': userPhoneNumber,
      'address': userAddress,
      'dOB': userDOB,
      'password': userPassword,
      'timeStamp': timeStamp,
    };
  }
}
