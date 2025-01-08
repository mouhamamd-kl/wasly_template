class AppConstants {
  static const String imagePath = "packages/wasly_template/assets/images/";
  static const String iconPath = "packages/wasly_template/assets/images/icons/";
  static const String mockUpPath = "${imagePath}mockup/";

  static const String bottomNavigationIcons = "${iconPath}bottomNavigationBar/";
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

  static String getCustomerBottomNavigationBarIcons(String path) {
    return customerBottomNaviationIcons + path;
  }

  static String getStoreBottomNavigationBarIcons(String path) {
    return storeBottomNaviationIcons + path;
  }
}
