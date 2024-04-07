// ignore: camel_case_types
class validation {
   String? validat(String? input){
    if(input!.isEmpty||input.length>5){
      return 'invalid value' ;
    }
    return null;
  }

   String? validat1(String? input){
    if(input!.isEmpty){
      return 'erorr' ;
    }
    return null;
  }
}