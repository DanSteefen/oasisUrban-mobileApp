import 'package:intl/intl.dart';

class OFormatter{

  static String formatData(DateTime? dateTime){
    dateTime ??= DateTime.now();
    return DateFormat("dd-MMMM-yyyy").format(dateTime);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    // (077) 546-5258
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11){
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber){
    
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formatterNumber = StringBuffer();
    formatterNumber.write('($countryCode)');

    int i = 0;
    while( i < digitsOnly.length){
      int groupLength = 2;
      if(i == 0 && countryCode == '+1'){
        groupLength = 3;
      }

      int end = i + groupLength;
      formatterNumber.write(digitsOnly.substring(i, end));

      if(end < digitsOnly.length){
        formatterNumber.write('');
      }
      i = end;
    }
    return phoneNumber;
  }
}