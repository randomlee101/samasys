String? validateFullName (String? s) => s!.isEmpty ? 'Please enter full name' : null;
String? validatePhoneNumber (String? s) => s!.length < 11 ? 'Phone number digits incomplete' : null;
String? validateEmail (String? s) => s!.contains("@") ? null : 'Please enter a valid email';
String? validatePosition (String? s) => s!.isEmpty ? 'Please fill in position' : null ;
String? validateSalary (String? s) => double.tryParse(s!) != null ? null : 'Please enter a valid salary';