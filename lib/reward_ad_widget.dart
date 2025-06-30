import 'package:admob_tutorial/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class RewardAdWidget extends StatefulWidget {
  const RewardAdWidget({super.key});

  @override
  State<RewardAdWidget> createState() => _RewardAdWidgetState();
}

class _RewardAdWidgetState extends State<RewardAdWidget> {
  late RewardedAd _rewardedAd;
  bool _isRewardedAdReady = false;
  @override
  void initState() {
    super.initState();
    _loadRewardedAd();
  }

  void _loadRewardedAd() {
    RewardedAd.load(
      adUnitId: AdHelper.rewardAdUnitId,
      request: AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (RewardedAd ad) {
          print('Rewarded ad Loaded');
          _rewardedAd = ad;
          _isRewardedAdReady = true;
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('Rewared ad failed to load $error');
          _isRewardedAdReady = false;
        },
      ),
    );
  }

  void _showRewardedAd() {
    if (_isRewardedAdReady) {
      _rewardedAd.show(
        onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
          print('User earned: ${reward.amount} ${reward.type}');

          // Grant reward here
          
        },
      );
    } else {
      print('Rewarded ad no ready yet.');
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _rewardedAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isRewardedAdReady ? _showRewardedAd : null,
      child: Text('Show Rewarded Ad'),
    );
  }
}
