import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/presentation/wm/language/language_mode_set_wm.dart';
import 'package:flutter_boilerplate/ui/components/radio_button/radio_button.dart';

class LanguagesListWidget extends StatefulWidget {
  const LanguagesListWidget({super.key});

  @override
  LanguagesListWidgetState createState() => LanguagesListWidgetState();
}

class LanguagesListWidgetState extends State<LanguagesListWidget> {
  final List<Map<String, String>> languages = <Map<String, String>>[
    <String, String>{'name': 'Русский', 'englishName': 'Russian', 'code': 'ru'},
    <String, String>{
      'name': 'Английский',
      'englishName': 'English',
      'code': 'en',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: languages.length,
      itemBuilder: (BuildContext context, int index) {
        final Map<String, String> language = languages[index];

        return RadioButton<String>(
          languageModeSetWMFactory(controlledLanguage: language['code']!),
          title: Builder(
            builder: (BuildContext context) {
              final AppColors? appColors =
                  Theme.of(context).extension<AppColors>();
              return Text(
                language['name']!,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: appColors!.background,
                ),
              );
            },
          ),
          subtitle: Text(
            language['englishName']!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(175, 175, 175, 1),
            ),
          ),
        );
      },
    );
  }
}
