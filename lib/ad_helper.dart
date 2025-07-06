import 'dart:io';

class AdHelper {
  //Bannerad 
  // This is the ad unit ID for the banner ad.
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-9268917371597719/3077258277';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-9268917371597719/6813592801';
    } else {
      throw UnsupportedError('Unsupported Platform');
    }
  }
  //Interstitial Ad
  // This is the ad unit ID for the interstitial ad.  
  static String get interstitialAdUnitId{
    if (Platform.isAndroid) {
      return 'ca-app-pub-9268917371597719/1453772142';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-9268917371597719/6514527132';
    } else {
      throw UnsupportedError('Unsupported Platform');
    }
  }

  //Reward Ad
  // This is the ad unit ID for the rewarded ad.
  static String get rewardAdUnitId{
    if (Platform.isAndroid) {
      return 'ca-app-pub-9268917371597719/8034280915';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-9268917371597719/4122407321';
    } else {
      throw UnsupportedError('Unsupported Platform');
    }
  }
}
