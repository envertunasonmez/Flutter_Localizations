import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/cubit/language_cubit.dart';
import 'package:flutter_localization/generated/l10n.dart';

class LanguageButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<LanguageCubit>().changeLanguage('tr');
          },
          child: Text(S.of(context).turkishButton),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<LanguageCubit>().changeLanguage('en');
          },
          child: Text(S.of(context).englishButton),
        ),
      ],
    );
  }
}