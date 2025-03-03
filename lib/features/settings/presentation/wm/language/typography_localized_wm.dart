// // Copyright (c) 2024 Communication and Radionavigation
// // This file is part of VENOM system
// // File can not be copied and/or distributed without express permission
// // from head person from Communication and Radionavigation

// import 'package:circon/di/di.dart';
// import 'package:circon/features/app/presentation/model/app_settings.model.dart';
// import 'package:circon/features/language-settings/domain/entities/language.dart';
// import 'package:circon/ui/components/typography.dart';
// import 'package:circon/ui/components/typography.wm.dart';
// import 'package:elementary/elementary.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_boilerplate/di/di.dart';
// import 'package:flutter_boilerplate/features/app/presentation/models/app_model.dart';
// import 'package:flutter_boilerplate/features/settings/domain/entities/language/language.dart';

// typedef TypographyContentBuilder = String Function(BuildContext);

// TypographyLocalizedWM Function(BuildContext) localizedTypographyWM(
//   TypographyContentBuilder builder,
// ) =>
//     (BuildContext context) {
//       final AppModel model = AppModel(sl(), sl());
//       return TypographyLocalizedWM(model, contentBuilder: builder);
//     };

// class TypographyLocalizedWM
//     extends WidgetModel<TypographyWidget, AppModel>
//     implements TypographyWm {
//   final TypographyContentBuilder contentBuilder;

//   final ValueNotifier<String> _content;
//   /* ------------------------------- Constructor ------------------------------ */
//   TypographyLocalizedWM(
//     super._model, {
//     required this.contentBuilder,
//   }) : _content = ValueNotifier<String>('');

//   void _updateContent(Language lang) {
//     _content.value = contentBuilder(context);
//   }

//   @override
//   void initWidgetModel() {
//     _content.value = contentBuilder(context);

//     model.language$.listen(_updateContent);

//     super.initWidgetModel();
//   }

//   @override
//   ValueListenable<String> get content => _content;
// }
