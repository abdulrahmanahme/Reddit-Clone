import 'package:get_it/get_it.dart';
import 'package:reddit_clone/model/repository/token/token_repo.dart';
import 'package:reddit_clone/model/source/local/shard_pre.dart';

import '../model/repository/vedio_repo.dart';

class GetItManager {
  static final GetIt getIt = GetIt.instance;
  static void setUp() {
    getIt.registerLazySingleton<SharedPrefManager>(() => SharedPrefManager());
        getIt.registerLazySingleton<TokenRepo>(() => TokenRepo());
        getIt.registerLazySingleton<VideoRepo>(() => VideoRepo());

  }
}
