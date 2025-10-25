class ApiKeys {
  static final baseUrl = "http://31.97.42.222:8000";
  static final getGoalsAndDietUrl = "$baseUrl/goals-diet-list";
  static final registerUserUrl = "$baseUrl/auth/register";
  static final loginUserUrl = "$baseUrl/auth/login";
  static final getUserUrl = "$baseUrl/user/profile";
  static final getSuggestedProductsUrl = "$baseUrl/scan/suggested-products";
  static final uploadScannedProductUrl = "$baseUrl/scan/";
  static final updateProfileUrl = "$baseUrl/user/profile";
  static final openfoodBaseUrl = "https://world.openfoodfacts.org";
  static final getTrendsUrl = "$baseUrl/scan/stats?from_date=";
  static final getMetGoalsAndPrefForUser =
      "$baseUrl/scan/goals-and-preferences";
  static final openapiProductFields =
      "fields=product_name,brands,nutriment_nutrients,nutriscore_score,nutriscore_grade,image_front_small_url,quantity,code,categories,categories_tags,ingredients_text,nutriments";
}
