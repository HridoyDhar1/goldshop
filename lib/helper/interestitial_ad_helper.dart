import 'package:gold_manager_update/helper/ad_helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class InterestitialAdHelper{
   myInterestitialAd(){
    InterstitialAd.load(
      adUnitId:AdHelper.interestitialAdId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          print("ads loaded successful");
          ad.show();
        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error');
        },
      ));
   }
}