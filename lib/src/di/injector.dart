import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:random_users/src/data/datasources/random_user_datasource.dart';
import 'package:random_users/src/domain/domain.dart';
import 'package:random_users/src/presentation/friend_list/bloc/friend_list_bloc.dart';
import 'package:random_users/src/presentation/home/cubit/bottom_navigation_cubit.dart';
import 'package:random_users/src/presentation/profile/bloc/profile_bloc.dart';

import '../data/repositories/random_user_repository_impl.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio client
  injector.registerSingleton<Dio>(Dio());

  // Datasources
  injector.registerSingleton<RandomUserDatasource>(
    RandomUserDatasource(injector()),
  );

  // Repositories
  injector.registerSingleton<RandomUserRepository>(
    RandomUserRepositoryImpl(injector()),
  );

  // UseCases
  injector.registerSingleton<GetSingleUserUsecase>(
    GetSingleUserUsecase(injector()),
  );
  injector.registerSingleton<GetUsersCollectionUsecase>(
    GetUsersCollectionUsecase(injector()),
  );

  // Blocs
  injector.registerFactory<ProfileBloc>(
    () => ProfileBloc(injector()),
  );
  injector.registerFactory<FriendListBloc>(
    () => FriendListBloc(injector()),
  );

  // Cubits
  injector.registerSingleton<BottomNavigationCubit>(
    BottomNavigationCubit(),
  );
}
