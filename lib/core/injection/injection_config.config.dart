// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/bloc/message_bloc/message_bloc_bloc.dart' as _i7;
import '../../data/datasource/message_datasource.dart' as _i4;
import '../../data/repositories/message_repository_impl.dart' as _i6;
import '../../domain/repositories/message_repository.dart' as _i5;
import '../graphql/graphql_client.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.GraphQLConfiguration>(() => _i3.GraphQLConfiguration());
    gh.factory<_i4.MessageDatasource>(
        () => _i4.MessageDatasourceImpl(gh<_i3.GraphQLConfiguration>()));
    gh.factory<_i5.MessageRepository>(
        () => _i6.MessageRepositoryImpl(gh<_i4.MessageDatasource>()));
    gh.factory<_i7.MessageBloc>(
        () => _i7.MessageBloc(gh<_i5.MessageRepository>()));
    return this;
  }
}
