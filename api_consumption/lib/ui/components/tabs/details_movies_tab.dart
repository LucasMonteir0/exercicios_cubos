import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:api_consumption/ui/blocs/get_details_bloc.dart';
import 'package:api_consumption/ui/blocs/states.dart';
import 'package:api_consumption/ui/components/details_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsMoviesTab extends StatefulWidget {
  const DetailsMoviesTab({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int? id;

  @override
  State<DetailsMoviesTab> createState() => _DetailsMoviesTabState();
}

class _DetailsMoviesTabState extends State<DetailsMoviesTab> {
  late CatalogRepository _repository;
  late GetDetailsBloc bloc;

  @override
  void initState() {
    super.initState();
    _repository = CatalogRepository();
    bloc = GetDetailsBloc(_repository, widget.id!);
    bloc();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDetailsBloc, BaseState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is ErrorState) {
          return Center(
            child: Text(state.message),
          );
        }
        if (state is SuccessState) {
          return DetailsListView(data: state.data);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
