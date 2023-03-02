import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsState.initial()) {
    on<ThemeModeChanged>(_onThemeModeChanged);
  }

  Future<void> _onThemeModeChanged(
    ThemeModeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    switch (event.themeModeStatus) {
      case AppThemeMode.darkMode:
        emit(state.copyWith(themeModeStatus: AppThemeMode.darkMode));
        break;
      case AppThemeMode.lightMode:
        emit(state.copyWith(themeModeStatus: AppThemeMode.lightMode));
        break;
      default:
        throw Exception();
    }
  }
}
