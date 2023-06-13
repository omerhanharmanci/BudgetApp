import 'package:budgetappproject/Model/api_user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.model) : super(const HomeInitial()){
    _homeInit();
  }
  final ApiUserModel model;

  void goSelectedDay(DateTime selectedDay, DateTime focusedDay) =>
      emit(HomeSelectedDay(selectedDay, focusedDay));
      
        void _homeInit() {
          emit(const HomeTable());
        }
}
