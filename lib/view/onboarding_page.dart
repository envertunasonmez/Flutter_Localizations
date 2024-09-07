import 'package:flutter/material.dart';
import 'package:flutter_localization/generated/l10n.dart';
import 'package:flutter_localization/view/widgets/language_buttons.dart';
import 'package:flutter_localization/view/widgets/onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Map<String, String Function(BuildContext)>> onboardingData = [
    {
      "title": (context) => S.of(context).onboardingTitle1,
      "description": (context) => S.of(context).onboardingDescription1,
    },
    {
      "title": (context) => S.of(context).onboardingTitle2,
      "description": (context) => S.of(context).onboardingDescription2,
    },
    {
      "title": (context) => S.of(context).onboardingTitle3,
      "description": (context) => S.of(context).onboardingDescription3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade300, Colors.purple.shade300],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingData.length,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return OnboardingContent(
                      title: onboardingData[index]['title']!(context),
                      description:
                          onboardingData[index]['description']!(context),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingData.length,
                  (index) => buildDot(index: index),
                ),
              ),
              SizedBox(height: 20),
              LanguageButtons(),
              SizedBox(height: 20),
              Text(
                S.of(context).selectedLanguage,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? Colors.white
            : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
