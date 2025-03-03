import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/theme_colors.dart';

/// Theme data change notifier
///
/// Widget that tracks changes of light theme and provides
/// methods to change it
///
/// Commonly wraps entire widget containing [MaterialApp]
class ThemeColorsProvider extends ChangeNotifier {
  /// External source of theme data
  final ValueListenable<ThemeColors> _colors;

  /// Current theme data value
  late ThemeColors _value;

  ThemeColorsProvider({required ValueListenable<ThemeColors> colors})
      : _colors = colors {
    // Add listener for changes comming from listenable value
    _colors.addListener(_updateTheme);
    // Set initial theme value
    _value = colors.value;
  }
  @override
  void dispose() {
    // Remove listener
    _colors.removeListener(_updateTheme);
    // Super destructor
    super.dispose();
  }

  /* --------------------------------- Handle --------------------------------- */
  void _updateTheme() {
    /// Update theme data value using setter to
    /// notify listeners of [this]
    theme = _colors.value;
  }

  /* ------------------------------- Notifiable ------------------------------- */
  /// Theme data getter
  ThemeColors get colors => _value;

  /// Theme data setter.
  /// Changes current theme data value and notifies
  /// all listeners
  set theme(ThemeColors data) {
    _value = data;
    notifyListeners();
  }
}
