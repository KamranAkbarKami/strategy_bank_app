import 'package:strategy_bank_app/gen/assets.gen.dart';

class OnBoarding {
  String steps;
  String assetName;
  String header;
  String description;

  OnBoarding(
      {required this.steps,
      required this.assetName,
      required this.header,
      required this.description});
}

List<OnBoarding> onBoardingList = [
  OnBoarding(
      steps: "1/4",
      assetName: Assets.onboardingImages.onBoardingImageOne,
      header: "Strategy Bank helps",
      description: "Career or guardian with challenging behaviours through "
          "proven parenting strategies for situations that have "
          "been caused by historical traumatic experiences and attachment"
          " issues. The child will heal through a new deeper attachment,"
          " and you will both experience a more connected and flourishing relationship."),
  OnBoarding(
      steps: "2/4",
      assetName: "",
      header:
          "Our strategies, which are based on our decades of experience and research",
      description:
          "Help you manage your children’s behaviour but also help you identify any "
          "other possible issues causing these challenging behaviours."),
  OnBoarding(
      steps: "3/4",
      assetName: Assets.onboardingImages.onBoardingImageTwo,
      header: "We use a simple yet robust feedback system",
      description: "To ensure you get the best strategies for your "
          "needs. Once you have tried a strategy, you can"
          " leave feedback on how good the strategy was so "
          "others can use it too. You can also see others’ "
          "feedback to see what has worked for them. "),
  OnBoarding(
      steps: "4/4",
      assetName: Assets.onboardingImages.onBoardingImageThree,
      header: "You can better your experience in our app",
      description:
          "By filling out your profile to 100%. This allows us to individualise strategies to your needs."),
];

