//Test page will be removed
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/app_colors.dart';
import 'package:flutter_boilerplate/features/settings/presentation/widgets/language/language_list_component.dart';
import 'package:flutter_boilerplate/l10n/generated/app_localizations.g.dart';

@RoutePage()
class TestFirstPage extends StatelessWidget {
  const TestFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String textPage = AppLocalizations.of(context)!.test;
    final AppColors? appColors = Theme.of(context).extension<AppColors>();
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: 300,
              height: 300,
              color: appColors!.background,
              child: Text(textPage)),
          LanguagesListWidget()
        ],
      ),
    );
  }
}
