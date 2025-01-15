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
  static String mapStyle = '''
  [
    {
      "featureType": "all",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#f5f5f5"
        }
      ]
    },
    {
      "featureType": "water",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#c9e9ff"
        }
      ]
    },
    {
      "featureType": "poi.park",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#d5ebc3"
        }
      ]
    },
    {
      "featureType": "road",
      "elementType": "geometry",
      "stylers": [
        {
          "color": "#ffffff"
        }
      ]
    },
    {
      "featureType": "road",
      "elementType": "geometry.stroke",
      "stylers": [
        {
          "color": "#e6e6e6"
        }
      ]
    }
  ]
  ''';
}
