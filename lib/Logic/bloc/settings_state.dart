part of 'settings_bloc.dart';

enum AppThemeMode { darkMode, lightMode }

enum AppInternationalization { english, sinhala, tamil }

class SettingsState extends Equatable {
  final AppThemeMode themeModeStatus;
  final double fontSizeSliderValue;
  const SettingsState(
      {required this.themeModeStatus, required this.fontSizeSliderValue});
  const SettingsState._(
      {this.themeModeStatus = AppThemeMode.lightMode,
      this.fontSizeSliderValue = 0.0});

  const SettingsState.initial() : this._();

  SettingsState copyWith({
    AppThemeMode? themeModeStatus,
    double? fontSizeSliderValue,
  }) {
    return SettingsState(
      themeModeStatus: themeModeStatus ?? this.themeModeStatus,
      fontSizeSliderValue: fontSizeSliderValue ?? this.fontSizeSliderValue,
    );
  }

  @override
  List<Object?> get props => [themeModeStatus, fontSizeSliderValue];
}
