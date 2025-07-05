import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:scenarioshelf/views/pages/signing/sign_up/sign_up_page.dart';

class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SignUpPage();
}
