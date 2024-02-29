import 'package:e_commerce_bloc/src/blocs/cubit/splash_cubit.dart';
import 'package:e_commerce_bloc/src/presentation/Screens/SplashScreen.dart';
import 'package:e_commerce_bloc/src/routes/route_page.dart';
import 'package:e_commerce_bloc/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SplashCubit()..startSplash(),
          )
        ],
        child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: const MaterialTheme(TextTheme()).light(),
            darkTheme: const MaterialTheme(TextTheme()).dark(),
            routerConfig: RoutePages.ROUTER,
          ),
        ));
  }
}
