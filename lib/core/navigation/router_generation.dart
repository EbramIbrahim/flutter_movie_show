import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_show/core/navigation/app_router.dart';
import 'package:movie_show/features/splash/presentation/splash_cubit.dart';
import 'package:movie_show/features/splash/presentation/splash_screen.dart';
import '../../service_locator.dart';

class RouterGeneration {
  static GoRouter router = GoRouter(
    initialLocation: AppRouter.splashScreen,
    routes: [
      GoRoute(
        path: AppRouter.splashScreen,
        name: AppRouter.splashScreen,
        builder:
            (context, state) => BlocProvider(
              create: (context) => sl<SplashCubit>()..checkAuthenticationState(),
              child: SplashScreen(),
            ),
      ),
    ],
  );
}
