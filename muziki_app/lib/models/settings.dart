part of 'models.dart';

@HiveType(typeId: 2)
class Settings extends BaseModel {

  @HiveField(3)
  String name;
  @HiveField(4, defaultValue: true)
  bool? darkMode;
  @HiveField(5, defaultValue: false)
  bool? useSystemTheme;
  @HiveField(6, defaultValue: 'Teal')
  String? themeColor;
  @HiveField(7, defaultValue: 'Grey')
  String? canvasColor;
  @HiveField(8, defaultValue: 'Grey900')
  String? cardColor;
  @HiveField(9, defaultValue: 2)
  int? backGrad;
  @HiveField(10, defaultValue: 4)
  int? cardGrad;
  @HiveField(11, defaultValue: 3)
  int? bottomGrad;
  @HiveField(12, defaultValue: 400)
  int? colorHue;
  @HiveField(13, defaultValue: {})
  Map? userThemes;
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
        this.userThemes,
        syncState})
      : super(id: id, syncState: syncState);

  Settings.empty():
        name="",
        super(id: Xid.string(), syncState: SyncState.local);
}

