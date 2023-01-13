import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:api_consumption/ui/blocs/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetDetailsBloc extends Cubit<BaseState> {
  final CatalogRepository _repository;
  final int id;
  GetDetailsBloc(this._repository, this.id) : super(EmptyState());

  void call() async {
    emit(const LoadingState());
    try {
      final result = await _repository.getDetails(id);
      emit(SuccessState(result));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
