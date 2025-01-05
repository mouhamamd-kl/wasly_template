import 'package:wasly_template/helpers/app_constants.dart';
import 'package:wasly_template/helpers/models/phone_model.dart';

class DataConstants {
  static List<PhoneCode> phoneCodes = [
    PhoneCode(
      code: '+970',
      country: "Palestine",
      icon: AppConstants.getIconPath(
        'palestine.svg',
      ), // Example path for Palestine
    ),
    PhoneCode(
      code: '+963',
      country: "Syrian Arabic Republic",
      icon: AppConstants.getIconPath(
        'syria.svg',
      ), // Example path for Syria
    ),
    PhoneCode(
      code: '+93',
      country: "Afghanistan",
      icon: AppConstants.getIconPath(
        'afghanistan.svg',
      ), // Example path for Afghanistan
    ),
  ];
}
