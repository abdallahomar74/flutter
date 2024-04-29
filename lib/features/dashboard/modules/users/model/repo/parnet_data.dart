import 'package:section_project/features/dashboard/modules/users/model/user_model.dart';

abstract class P_Repositry {
  Future<void> insert_data({required String name, String? address});
  Future<List<UModel>> fetch_data();
  Future<void> delete_data({required int id});
}