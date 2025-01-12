class AppConstants {
  static const String imagePath = "packages/wasly_template/assets/images/";
  static const String iconPath = "packages/wasly_template/assets/images/icons/";
  static const String mockUpPath = "${imagePath}mockup/";
  static const String sortPath = "${iconPath}sort/";
  static const String textFieldPath = "${iconPath}textField/";
  static const String locationLabel = "${iconPath}locationLabel/";
  static const String bottomNavigationIcons = "${iconPath}bottomNavigationBar/";
  static const String favouriteIcons = "${iconPath}favourite/";
  static const String locationCardIcons = "${iconPath}locationCard/";
  static const String paymentCardIcons = "${iconPath}paymentCard/";
  static const String textScreensIcons = "${iconPath}textScreens/";

  static const String customerBottomNaviationIcons =
      "${bottomNavigationIcons}customer/";
  static const String storeBottomNaviationIcons =
      "${bottomNavigationIcons}store/";

  static String getAssetPath(String path) {
    return imagePath + path;
  }

  static String getIconPath(String path) {
    return iconPath + path;
  }

  static String getMockUpPath(String path) {
    return mockUpPath + path;
  }

  static String getSortPath(String path) {
    return sortPath + path;
  }

  static String getTextFieldPath(String path) {
    return textFieldPath + path;
  }

  static String getLabelLocationPath(String path) {
    return locationLabel + path;
  }

  static String getCustomerBottomNavigationBarIcons(String path) {
    return customerBottomNaviationIcons + path;
  }

  static String getStoreBottomNavigationBarIcons(String path) {
    return storeBottomNaviationIcons + path;
  }

  static String getFavouriteIcons(String path) {
    return favouriteIcons + path;
  }

  static String getLocationCardIcons(String path) {
    return locationCardIcons + path;
  }

  static String getPaymentCardIcons(String path) {
    return paymentCardIcons + path;
  }

  static String getTextScreensIcons(String path) {
    return textScreensIcons + path;
  }
}
