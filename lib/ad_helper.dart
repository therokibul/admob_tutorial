import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-9268917371597719/3077258277';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-9268917371597719/6813592801';
    } else {
      throw UnsupportedError('Unsupported Platform');
    }
  }
  static String get interstitialAdUnitId{
    if (Platform.isAndroid) {
      return 'ca-app-pub-9268917371597719/1453772142';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-9268917371597719/6514527132';
    } else {
      throw UnsupportedError('Unsupported Platform');
    }
  }
  static String get rewardAdUnitId{
    if (Platform.isAndroid) {
      return 'ca-app-pub-9268917371597719/1497988260';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-9268917371597719/6392056449';
    } else {
      throw UnsupportedError('Unsupported Platform');
    }
  }
}
