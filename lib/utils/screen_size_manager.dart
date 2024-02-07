class ScreenSizeManager {
  final double sizeWidth;
  final double sizeHeight;

  ScreenSizeManager({
    required this.sizeWidth,
    required this.sizeHeight,
  });

  double calculateDistance(double distance, String choose) {
    switch (choose) {
      case 'width':
        return sizeWidth * distance;

      case 'height':
        return sizeHeight * distance;

      default:
        return 0;
    }
  }
}
