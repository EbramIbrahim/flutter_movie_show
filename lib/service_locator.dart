import 'package:get_it/get_it.dart';
import 'package:movie_show/core/network/dio_client.dart';
import 'package:movie_show/features/splash/presentation/splash_cubit.dart';

final sl = GetIt.instance;

void setUpServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());
  sl.registerFactory(() => SplashCubit());
}
