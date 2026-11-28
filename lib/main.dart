import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lagan_mobprog/screens/home_screen.dart';
import 'package:lagan_mobprog/screens/newsfeed_screen.dart';
import 'package:material_ui/material_ui.dart';

import 'screens/notification_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Facebook Clone",
          initialRoute: "/home",
          routes: {
            "/home": (context) => const HomeScreen(),
            "/newsfeed": (context) => const NewsfeedScreen(),
            // add route for notification screen
            "/notifications": (context) => const NotificationScreen(),
          },
        );
      },
    );
  }
}
