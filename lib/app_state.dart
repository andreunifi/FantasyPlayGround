import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_level1')) {
        try {
          final serializedData = prefs.getString('ff_level1') ?? '{}';
          _level1 =
              LevelsStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  LevelsStruct _level1 = LevelsStruct.fromSerializableMap(jsonDecode(
      '{\"Level_name\":\"Water Kingdom\",\"enemies_remaining\":\"[\\\"{\\\\\\\"health\\\\\\\":\\\\\\\"220\\\\\\\",\\\\\\\"drop\\\\\\\":\\\\\\\"/items/example\\\\\\\",\\\\\\\"name\\\\\\\":\\\\\\\"Test Rhino\\\\\\\"}\\\"]\"}'));
  LevelsStruct get level1 => _level1;
  set level1(LevelsStruct _value) {
    _level1 = _value;
    prefs.setString('ff_level1', _value.serialize());
  }

  void updateLevel1Struct(Function(LevelsStruct) updateFn) {
    updateFn(_level1);
    prefs.setString('ff_level1', _level1.serialize());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
