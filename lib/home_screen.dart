import 'package:admob_tutorial/banner_ad_widget.dart';
import 'package:admob_tutorial/interstitial_ad_widget.dart';
import 'package:admob_tutorial/reward_ad_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AdMob Tutorial')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is a Text', textScaler: TextScaler.linear(2)),
            InterstitialAdWidget(),
            RewardAdWidget(),
            BannerAdWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BannerAdWidget(),
    );
  }
}
