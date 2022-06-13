// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/cupertino.dart';
import 'package:pomo_pomo/app/app.dart';
import 'package:pomo_pomo/bootstrap.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final theme = await PomoPomoTheme.build();
  await bootstrap(
    () => App(
      theme: theme,
    ),
  );
}
