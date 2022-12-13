class UserModel {
  final String name;
  final String birthday;

  UserModel(this.name, this.birthday);

  @override
  String toString() => '$name, $birthday';
}
