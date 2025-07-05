import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/providers/current_user/current_user_controller.dart';
import 'package:scenarioshelf/router/routes/boot_routes/sign_in_route.dart';
import 'package:scenarioshelf/router/routes/boot_routes/sign_up_route.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';
import 'package:scenarioshelf/views/pages/boot/boot_page.dart';
import 'package:scenarioshelf/views/pages/sessions/sessions_page.dart';
import 'package:scenarioshelf/views/pages/signing/email_verification/email_verification_page.dart';
import 'package:scenarioshelf/views/pages/signing/providers/provisionally_registered_user/provisionally_registered_user_controller.dart';
import 'package:scenarioshelf/views/pages/splash/splash_page.dart';
import 'package:scenarioshelf/views/pages/user_setting/setup/setup_user_page.dart';

part 'app_routes.g.dart';

part 'routes/initial_route.dart';
part 'routes/splash_route.dart';
part 'routes/boot_route.dart';
part 'routes/email_verification_route.dart';
part 'routes/setup_user_route.dart';
part 'routes/home_route.dart';
part 'routes/sessions_route.dart';
part 'routes/record_route.dart';
