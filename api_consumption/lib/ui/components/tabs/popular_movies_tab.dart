import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:api_consumption/ui/blocs/get_popular_bloc.dart';
import 'package:api_consumption/ui/blocs/states.dart';
import 'package:api_consumption/ui/components/movies_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularMoviesTab extends StatefulWidget {
  const PopularMoviesTab({
    Key? key,
  }) : super(key: key);

  @override
  State<PopularMoviesTab> createState() => _PopularMoviesTabState();
}

class _PopularMoviesTabState extends State<PopularMoviesTab> {
  late CatalogRepository _repository;
  late GetPopularBloc bloc;

  @override
  void initState() {
    super.initState();
    _repository = CatalogRepository();
    bloc = GetPopularBloc(_repository);
    bloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPopularBloc, BaseState>(
        bloc: bloc,
        builder: (context, state) {
          if (state is ErrorState) {
            return Center(
              child: Text(state.message),
            );
          }
          if (state is SuccessState) {
            return MoviesGridView(
              data: state.data,
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  @override
  void dispose() {
    super.dispose();
    bloc.close();
  }
}
