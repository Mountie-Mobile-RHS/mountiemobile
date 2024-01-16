import 'package:flutter/material.dart';
import 'package:mountiemobile/core/router/app_router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {                         
  final _appRouter = AppRouter();

  App({super.key});            
            
  @override            
  Widget build(BuildContext context){
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
    );
  }            
}    

