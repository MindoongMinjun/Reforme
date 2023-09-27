class UserInfo {
  final String id, password, phoneNum;

  UserInfo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        password = json['password'],
        phoneNum = json['phoneNum'];
}
