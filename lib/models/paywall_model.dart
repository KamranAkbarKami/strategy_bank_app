class PayWallModel {
  String planPrice;
  String planSpan;
  String planDescription;
  bool isBestPrice;

  PayWallModel(
      {required this.planPrice,
      required this.planDescription,
      required this.planSpan,
      required this.isBestPrice});
}

List<PayWallModel> payWallPlanList = [
  PayWallModel(
      planPrice: "4.99",
      planDescription: "Get 7 free days",
      planSpan: "Month",
      isBestPrice: false),
  PayWallModel(
      planPrice: "48.99",
      planDescription: "7.99\$ / Month, Billed annually",
      planSpan: "Year",
      isBestPrice: true),
];
