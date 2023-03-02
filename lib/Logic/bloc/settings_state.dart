part of 'settings_bloc.dart';

enum AppThemeMode { darkMode, lightMode }

class SettingsState extends Equatable {
  final AppThemeMode themeModeStatus;
  const SettingsState({required this.themeModeStatus});
  const SettingsState._({this.themeModeStatus = AppThemeMode.lightMode});

  const SettingsState.initial() : this._();

  SettingsState copyWith({
    AppThemeMode? themeModeStatus,
  }) {
    return SettingsState(
      themeModeStatus: themeModeStatus ?? this.themeModeStatus,
    );
  }

  @override
  List<Object?> get props => [themeModeStatus];
}
