import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:api_consumption/ui/blocs/get_top_rated_bloc.dart';
import 'package:api_consumption/ui/blocs/states.dart';
import 'package:api_consumption/ui/components/movies_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedMoviesTab extends StatefulWidget {
  const TopRatedMoviesTab({
    Key? key,
  }) : super(key: key);

  @override
  State<TopRatedMoviesTab> createState() => _TopRatedMoviesTabState();
}

class _TopRatedMoviesTabState extends State<TopRatedMoviesTab> {
  late CatalogRepository _repository;
  late GetTopRatedBloc bloc;

  @override
  void initState() {
    super.initState();
    _repository = CatalogRepository();
    bloc = GetTopRatedBloc(_repository);
    bloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTopRatedBloc, BaseState>(
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
