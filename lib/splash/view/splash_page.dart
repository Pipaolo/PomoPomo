import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pomo_pomo/router/app_router.dart';
import 'package:pomo_pomo/splash/cubit/splash_cubit.dart';
import 'package:pomo_pomo_theme/pomo_pomo_theme.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit(),
      child: const SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const _title = 'Pomo Pomo';
  static const _message =
      '''A stylistic Pomodoro timer that provides a simple way to track your time.''';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final bloc = BlocProvider.of<SplashCubit>(context);
      bloc.state.when(
        visible: () {},
        hidden: () {
          GoRouter.of(context).go($homeRoute.path);
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        state.when(
          visible: () {},
          hidden: () {
            GoRouter.of(context).go('/');
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                SplashPage._title,
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              PomoPomoSpacers.hSpacing2,
              SvgPicture.asset(
                'assets/icons/tomato.svg',
                width: 32,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: PomoPomoSpacings.spacing4,
          ),
          child: ElevatedButton(
            onPressed: () {
              context.read<SplashCubit>().hide();
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: PomoPomoSpacings.spacing4,
              ),
              minimumSize: const Size(
                double.maxFinite,
                58,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              'Be Productive Now!',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(
            PomoPomoSpacings.spacing4,
          ),
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.clock,
                size: 48,
                color: Theme.of(context).colorScheme.secondary,
              ),
              PomoPomoSpacers.vSpacing4,
              Text(
                SplashPage._message,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
