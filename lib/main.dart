import 'package:fluttergameapp/provider/appProvider.dart';
import 'package:fluttergameapp/screens/getting_started_screen.dart';
import 'package:fluttergameapp/screens/home.dart';
import 'package:fluttergameapp/screens/login.dart';
import 'package:fluttergameapp/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/user_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: UserProvider.initialize()),
    ChangeNotifierProvider.value(value: AppProvider()),
    ChangeNotifierProvider.value(value: null)
  ],
  child: MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.deepOrange
    ),
    home: ScreensController(),
  )));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    switch(user.status){
      case Status.Uninitialized:
        return Splash();
      case Status.Unauthenticated:
        return GettingStartedScreen();
      case Status.Authenticating:
        return Login();
     case Status.Authenticated:
        return HomePage();
      default: return Login();
    }
  }
}
