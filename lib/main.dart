import 'package:flutter/material.dart';
import 'package:mountiemobile/config/app_router.dart';

void main() {
  runApp(App());
}
// Tobin
class App extends StatelessWidget {                         
  final _appRouter = AppRouter();

  App({super.key});            
            
  @override            
  Widget build(BuildContext context){            
    return MaterialApp.router(            
      routerConfig: _appRouter.config(),         
    );            
  }            
}    

