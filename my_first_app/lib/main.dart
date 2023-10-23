import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/animation/animation_list.dart';
import 'package:my_first_app/animation/curve_navigatiobar_screen.dart';
import 'package:my_first_app/firebase_options.dart';

final messangerkey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // await Hive.initFlutter();
  // await Hive.openBox(boxName);
  // Hive.registerAdapter(TodoAdapter());
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
        //  MultiProvider(
        // providers: [
        //   ChangeNotifierProvider(create: (context) => CartProvider()),
        //   ChangeNotifierProvider(create: (context) => AuthProvider()),
        //   ChangeNotifierProvider(create: (context) => PageProvider())
        //   // ChangeNotifierProvider(create: (context) => CounterProvider())
        // ],
        // child:
        MaterialApp(
            scaffoldMessengerKey: messangerkey,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
              useMaterial3: true,
              //   colorScheme: ColorScheme.fromSeed(
              //     seedColor: const Color.fromRGBO(36, 97, 220, 1),
              //   ),
            ),

            // home: const MyHomeScreen(),
            // home: const MyWhatsapp(),
            // home: const ProductScreen(),
            // home: const SelectorScreen(),
            // home: const MyUiDesign(),
            // home: const SliverScreen(),
            // home: const Googlekeeps(),
            // home: const ApiUserScreen(),
            // home: const CountScreens(),
            // home: const ApiUserScreen(),
            // home: const RandomUserScreen(),
            // home: const PostScreen(),
            // home: const FormScreen(),
            // home: const PickerScreen(),
            // home: const Advancedwidgets(),
            // home: const ListviewScreen(),
            // home: const Rotatedbox(),
            // home: const PageviewScreen(),
            // home: const PaintScreen(),
            // home: const CliperScreeen(),
            // home: const MaterialScreen(),
            // home: const PaginationScreen(),
            // home: const PaginationScreen(),
            // home: const (),
            // home: const HiveTodoScreen(),
            // home: const InitialScreen(),
            // home: const RandomUserScreen(),
            home:const AnimatedListt()
            );
  }
}
