import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:scenarioshelf/views/pages/signing/sign_in/sign_in_page.dart';

class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignInPage();
}
