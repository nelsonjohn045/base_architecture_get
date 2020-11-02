import 'package:hive/hive.dart';

part 'auth_dbmodel.g.dart';

@HiveType(typeId: 0)
class AuthModel {
  AuthModel(this.cookie, this.email, this.phone);
  //TODO:encrypt
  @HiveField(0)
  String cookie;
  @HiveField(1)
  String email;
  @HiveField(2)
  String phone;
}
