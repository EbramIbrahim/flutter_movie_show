import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_show/features/splash/presentation/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());


  void checkAuthenticationState() {
    Future.delayed(const Duration(seconds: 2));
    emit(Authenticated());
  }

}