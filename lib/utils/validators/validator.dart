class TValidator {

  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email ist required';
    }

    //Regular expression for email validation
    final emailRegExp = RegExp('/^[a-zA-Z0-9._%+-]{+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}/');

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address.';
    }

    return null;
  }


  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password ist required';
    }

    
    if(value.length < 8){
      return "password must be at least 8 character long.";
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at least one Uppercase letter.';
    }

    //Check for numbers 
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain at least one Uppercase letter.';
    }

    //check for special character
    if(!value.contains(RegExp(r'[^a-zA-Z0-9]'))){
      return 'Password must contain at least one speical character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone ist required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required).';
    }

    return null;
  }



}