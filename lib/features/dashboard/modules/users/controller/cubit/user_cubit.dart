import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:section_project/features/dashboard/modules/users/model/repo/firbase.dart';
import 'package:section_project/features/dashboard/modules/users/model/repo/local_db(sqflite).dart';
import 'package:section_project/features/dashboard/modules/users/model/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserLoading()) {
    init();
  }

  List<UModel> users = [];
  Future<void> init() async {
    emit(UserLoading());
    //users = await (await DatabaseRepo.instance).fetch_data();
    users = await FirebaseRepo.instance.fetch_data();
    if (users.isEmpty) {
      emit(UserEmpty());
    } else {
      emit(UserLoaded());
    }
  }
}
