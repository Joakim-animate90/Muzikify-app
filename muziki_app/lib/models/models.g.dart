// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SyncStateAdapter extends TypeAdapter<SyncState> {
  @override
  final int typeId = 1;

  @override
  SyncState read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SyncState.unknown;
      case 1:
        return SyncState.local;
      case 2:
        return SyncState.synced;
      default:
        return SyncState.unknown;
    }
  }

  @override
  void write(BinaryWriter writer, SyncState obj) {
    switch (obj) {
      case SyncState.unknown:
        writer.writeByte(0);
        break;
      case SyncState.local:
        writer.writeByte(1);
        break;
      case SyncState.synced:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final int typeId = 2;

  @override
  Settings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Settings(
      id: fields[1] as dynamic,
      name: fields[3] as String,
      darkMode: fields[4] == null ? true : fields[4] as bool?,
      useSystemTheme: fields[5] == null ? false : fields[5] as bool?,
      themeColor: fields[6] == null ? 'Teal' : fields[6] as String?,
      cardColor: fields[8] == null ? 'Grey900' : fields[8] as String?,
      canvasColor: fields[7] == null ? 'Grey' : fields[7] as String?,
      backGrad: fields[9] == null ? 2 : fields[9] as int?,
      cardGrad: fields[10] == null ? 4 : fields[10] as int?,
      bottomGrad: fields[11] == null ? 3 : fields[11] as int?,
      colorHue: fields[12] == null ? 400 : fields[12] as int?,
      userThemes: fields[13] == null
          ? {}
          : (fields[13] as Map?)?.cast<dynamic, dynamic>(),
      syncState: fields[0] == null ? SyncState.unknown : fields[0] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer
      ..writeByte(13)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.darkMode)
      ..writeByte(5)
      ..write(obj.useSystemTheme)
      ..writeByte(6)
      ..write(obj.themeColor)
      ..writeByte(7)
      ..write(obj.canvasColor)
      ..writeByte(8)
      ..write(obj.cardColor)
      ..writeByte(9)
      ..write(obj.backGrad)
      ..writeByte(10)
      ..write(obj.cardGrad)
      ..writeByte(11)
      ..write(obj.bottomGrad)
      ..writeByte(12)
      ..write(obj.colorHue)
      ..writeByte(13)
      ..write(obj.userThemes)
      ..writeByte(0)
      ..write(obj.syncState)
      ..writeByte(1)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
