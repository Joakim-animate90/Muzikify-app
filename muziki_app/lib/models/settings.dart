part of 'models.dart';

@HiveType(typeId: 2)
class Settings extends BaseModel {

  @HiveField(3)
  String name;
  @HiveField(4, defaultValue: '')
  String? darkMode;
  @HiveField(5, defaultValue: '')
  String? useSystemTheme;
  @HiveField(6, defaultValue: '')
  String? themeColor;
  @HiveField(7, defaultValue: '')
  String? canvasColor;
  @HiveField(8, defaultValue: '')
  String? cardColor;
  @HiveField(9, defaultValue: '')
  String? backGrad;
  @HiveField(10, defaultValue: '')
  String? cardGrad;
  @HiveField(11, defaultValue: '')
  String? bottomGrad;
  @HiveField(12, defaultValue: '')
  String? colorHue;
  Settings(
      {required id,
        required this.name,
        this.darkMode,
        this.useSystemTheme,
        this.themeColor,
        this.cardColor,
        this.canvasColor,
        this.backGrad,
        this.cardGrad,
        this.bottomGrad,
        this.colorHue,
        syncState})
      : super(id: id, syncState: syncState);

  Settings.empty():
        name="",
        super(id: Xid.string(), syncState: SyncState.local);
}

