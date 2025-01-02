class AppConstants {
  static const String imagePath = "packages/wasly_template/assets/images/";
  static const String iconPath = "packages/wasly_template/assets/images/icons/";

  static String getAssetPath(String path) {
    return imagePath + path;
  }

  static String getIconPath(String path) {
    return iconPath + path;
  }
}
