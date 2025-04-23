import 'package:cleaning_trash/presentation/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'simple_bloc_observer.dart';  // import file bạn đã viết

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  // await HydratedStorage.build();
  Bloc.observer = SimpleBlocObserver();  
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
