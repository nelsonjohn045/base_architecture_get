import 'package:hive/hive.dart';

part 'db_datamodels.g.dart';

const String kUserDataKey = 'BOON_USER_DATA_KEY';

@HiveType(typeId: 0)
class UserData extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final int role;

  @HiveField(2)
  final String userName;

  @HiveField(3)
  final String userEmail;

  @HiveField(4)
  final String token;

  @HiveField(5)
  final int expiration;

  UserData(this.id, this.role, this.userName, this.userEmail, this.token,
      this.expiration);
}
