// Copyright (c) 2024 Communication and Radionavigation
// This file is part of VENOM system
// File can not be copied and/or distributed without express permission
// from head person from Communication and Radionavigation

import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/features/settings/domain/entities/theme_modes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit([SettingsState? state])
      : super(
          state ??
              const SettingsState(
                mode: AppThemeMode.system,
                // language: Language(
                //   code: 'en',
                //   locale: 'en',
                //   language: 'English',
                //   nativeLanguage: 'English',
                // ),
                // supportedLanguages: <Language>[
                //   Language(
                //     code: 'en',
                //     locale: 'en',
                //     language: 'English',
                //     nativeLanguage: 'English',
                //   ),
                //   Language(
                //     code: 'ru',
                //     locale: 'ru',
                //     language: 'Russian',
                //     nativeLanguage: 'Русский',
                //   ),
                // ],
              ),
        );

  void changeThemeMode(AppThemeMode mode, [bool? manual]) {
    emit(
      state.copyWith(
        mode: mode,
        manualTheme: manual ?? AppThemeMode.system != mode,
      ),
    );
  }

  // void changeLang(Language lang) {
  //   emit(
  //     state.copyWith(
  //       language: lang,
  //     ),
  //   );
  // }
}
