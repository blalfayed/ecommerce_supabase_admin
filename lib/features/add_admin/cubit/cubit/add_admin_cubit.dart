import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_supabase_admin/core/api_services.dart';
import 'package:meta/meta.dart';

part 'add_admin_state.dart';

class AddAdminCubit extends Cubit<AddAdminState> {
  AddAdminCubit() : super(AddAdminInitial());

  ApiServices _apiServices = ApiServices();

  Future<void> createAnAdmin(Map<String, dynamic> data) async {
    emit(AddAdminLoading());

    try {
      emit(AddAdminLoading());
      Response response = await _apiServices.createAnAccount("signup", data);
      if (response.statusCode == 200) {
        emit(AddAdminSuccess());
      } else {
        emit(AddAdminError(msgError: response.data["msg"]));
      }
    } catch (e) {
      print(e.toString());
      emit(AddAdminError(msgError: "Something Went Wrong, Please Try Again"));
    }
  }
}
