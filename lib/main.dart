import 'package:code_struct/practical/widgets/Showbottomsheet_Popup/popup.dart';
import 'package:code_struct/practical/widgets/ThemeChange_provider/themeProvider.dart';
import 'package:code_struct/practical/widgets/ThemeChange_provider/themeProvider_Screen.dart';
import 'package:code_struct/practical/widgets/custome_theme.dart';
import 'package:code_struct/practical/widgets/multi_provider/multiScreen.dart';
import 'package:code_struct/practical/widgets/multi_provider/multiprovider.dart';
import 'package:code_struct/practical/widgets/navigation_example/grid_view.dart';
import 'package:code_struct/practical/widgets/navigation_example/view/Image_Picker.dart';
import 'package:code_struct/practical/widgets/navigation_example/view/page_view.dart';
import 'package:code_struct/practical/widgets/provider/count_provider.dart';
import 'package:code_struct/practical/widgets/provider/count_provider_widgets.dart';
import 'package:code_struct/practical/widgets/stateless_statefull/statefull.dart';
import 'package:code_struct/practical/widgets/stateless_statefull/stateless.dart';
import 'package:code_struct/practical/widgets/url_launcher/url_Launcher_ex..dart';
import 'package:code_struct/view/presentaton/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyDCenSct2kKfdsCQ6Iu5iBFLjfOoaMeI0A",
    appId: "fir-de74c",
    messagingSenderId: "177341015553",
    projectId: "fir-de74c",
  ));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.black))
          // textTheme: GoogleFonts.loveLightTextTheme(
          //     Theme.of(context).primaryTextTheme)
          ),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => const SplashScreen(),
      //   "Login": (context) => const LoginScreen(),
      //   "Signup": (context) => const SignupScreen(),
      //   "ScreenThree": (context) => const ScreenThree(),
      // },
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MultiProviderSlider()),
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ],
          child: Builder(builder: (BuildContext context){
            final themeChangeProvider = Provider.of<ThemeProvider>(context);
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: CustomThemeData.lightTheme,
              themeMode: themeChangeProvider.themechange,
              darkTheme: CustomThemeData.darkTheme,
              home:   Image_picker(),
            );
          },)

      ),
    );
  }
}
