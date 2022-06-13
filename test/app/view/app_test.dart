// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pomo_pomo/app/app.dart';
import 'package:pomo_pomo/splash/view/splash_page.dart';

void main() {
  group('App', () {
    testWidgets('renders SplashPage', (tester) async {
      await tester.pumpWidget(
        App(
          theme: ThemeData(),
        ),
      );
      expect(find.byType(SplashPage), findsOneWidget);
    });
  });
}
