import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
//import 'package:meta/meta.dart';

part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(RegistrationInitial());
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController(); 
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validationconfirm (){
    if(formkey.currentState!.validate()){
      

    }
  }


}
