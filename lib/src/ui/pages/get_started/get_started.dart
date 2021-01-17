import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../routes/routes.dart';
import '../../components/buttons/rounded_button.dart';
import 'widgets/page.dart';

class GetStartedPage extends StatefulWidget {
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  final _pageController = PageController();

  void _login() {
    Navigator.of(context).pushNamed(AppRoutes.login);
  }

  void _createAccount() {
    Navigator.of(context).pushNamed(
      AppRoutes.signUp,
    );
  }

  final _imagesPages = [
    PageWidget(
      image: 'passport.svg',
      title: 'Plan your trips',
      description: 'Book one of our hotel to escape the ordinary',
    ),
    PageWidget(
      image: 'travel-bag.svg',
      title: 'Find best deals',
      description:
          'Find deals for any season from cosy country homes to city flats',
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: PageView(
                  controller: _pageController,
                  children: _imagesPages,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: _imagesPages.length,
                  effect: WormEffect(
                    activeDotColor: Theme.of(context).primaryColor,
                    dotColor: Colors.grey[300],
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ),
              const Spacer(),
              AppRoundedButton(
                onPressed: _login,
                elevation: 7.5,
                title: 'Log in',
              ),
              const SizedBox(
                height: 20,
              ),
              AppRoundedButton(
                onPressed: _createAccount,
                elevation: 7.5,
                color: Colors.white,
                textColor: Colors.black87,
                title: 'Create account',
              ),
            ],
          ),
        ),
      );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
