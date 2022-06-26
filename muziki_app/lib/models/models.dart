import 'package:hive/hive.dart';
import 'package:xid/xid.dart';

part 'models.g.dart';
part 'settings.dart';




abstract class BaseModel extends HiveObject{
  @HiveField(0, defaultValue: SyncState.unknown)
  SyncState? syncState;

  @HiveField(1)
  String id;

  BaseModel({ this.syncState, required this.id});
}


@HiveType(typeId: 1)
enum SyncState {
  @HiveField(0, defaultValue: 'ukwn')
  unknown,

  @HiveField(1, defaultValue: 'lcl')
  local,

  @HiveField(2, defaultValue: 'syc')
  synced,

}