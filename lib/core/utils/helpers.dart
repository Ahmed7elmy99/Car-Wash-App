import 'package:get/get.dart';

class Helpers {
  ///isArabic it accepts text to check if this string is Arabic by checking the first character's unicode.
  static bool isArabic(String text) {
    if (text.isEmpty) return false;

    // Get the first character code unit
    int firstChar = text.codeUnitAt(0);

    // Check if it falls within the Arabic Unicode range
    return (firstChar >= 0x0600 && firstChar <= 0x06FF) || // Arabic
        (firstChar >= 0x0750 && firstChar <= 0x077F) || // Arabic Supplement
        (firstChar >= 0x08A0 && firstChar <= 0x08FF) || // Arabic Extended-A
        (firstChar >= 0xFB50 &&
            firstChar <= 0xFDFF) || // Arabic Presentation Forms-A
        (firstChar >= 0xFE70 &&
            firstChar <= 0xFEFF); // Arabic Presentation Forms-B
  }

  static String convertTimeToPeriod(int time) {
    if (time == 365) {
      return 'yearly'.tr;
    } else if (time == 30) {
      return 'monthly'.tr;
    } else if (time == 180) {
      return 'half_yearly'.tr;
    } else if (time == 7) {
      return 'weekly'.tr;
    } else {
      return 'daily'.tr;
    }
  }
}
