

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../config/secured_storage.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final SecuredStorage _securedStorage;

  ThemeBloc(this._securedStorage) : super(const ThemeState()) {
    on<ThemeChanged>(_onThemeChanged);
    _loadSavedTheme();
  }

  Future<void> _loadSavedTheme() async {
    final savedTheme = await _securedStorage.getThemeMode();
    if (savedTheme != null) {
      add(ThemeChanged(ThemeMode.values.firstWhere(
        (e) => e.toString() == savedTheme,
        orElse: () => ThemeMode.system,
      )));
    }
  }

  Future<void> _onThemeChanged(
    ThemeChanged event,
    Emitter<ThemeState> emit,
  ) async {
    await _securedStorage.saveThemeMode(event.themeMode.toString());
    emit(state.copyWith(themeMode: event.themeMode));
  }
}