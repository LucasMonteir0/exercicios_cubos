import 'package:api_consumption/data/model/catalog_model.dart';
import 'package:api_consumption/data/repository/catalog_repository.dart';
import 'package:api_consumption/ui/blocs/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetPopularBloc extends Cubit<BaseState> {
  final CatalogRepository _repository;

  GetPopularBloc(this._repository) : super(EmptyState());

  void call() async {
    emit(const LoadingState());
    try {
      final result = await _repository.getPopular();
      emit(SuccessState<List<CatalogModel>>(result));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
