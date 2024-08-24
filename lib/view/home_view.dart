import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/cubit/language_cubit.dart';
import 'package:flutter_localization/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(S.of(context).welcome),
            const SizedBox(
              height: 16,
            ),
            Text(S.of(context).language),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<LanguageCubit>().changeLanguage("en");
              },
              child: const Text('English'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<LanguageCubit>().changeLanguage("tr");
              },
              child: const Text('Türkçe'),
            ),
          ],
        ),
      ),
    );
  }
}
