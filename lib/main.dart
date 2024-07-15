import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:reddit_clone/model/source/local/shard_pre.dart';
import 'package:reddit_clone/utils/get_it_manager.dart';
import 'view/home_page.dart';
import 'view_model/video_view_model.dart';

GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<VideoProvider>(
          create: (context) => VideoProvider()..getVideoDetails(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Reddit Clone',
          navigatorKey: navKey,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: RedditVideoPlayer(
          videoUrl:
              'https://v.redd.it/gvuvwpvo4ubd1/DASHPlaylist.mpd?a=1723478534%2CMmQ3N2ZmNmUzOTZmMmQyNjg2OGUzNmZhYTA0ZjFlYTc5OTg3MGZhOTgxOGQ3NjIxODU1Nzc2N2E1MzFhYjcwNg%3D%3D&amp;v=1&amp;f=sd'),
    );
  }
}

setup() async {
  GetItManager.setUp();
  await GetItManager.getIt.get<SharedPrefManager>().init();
}
