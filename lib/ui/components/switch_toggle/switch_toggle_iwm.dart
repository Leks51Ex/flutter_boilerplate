

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';

abstract interface class SwitchToggleWM implements IWidgetModel {
  ValueListenable<bool> get enabled;

  void onChanged(bool value);
}
