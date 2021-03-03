import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../screens/add_ratings_screen.dart';
import '../screens/bookmarks_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/category_detail_screen.dart';
import '../screens/change_language_screen.dart';
import '../screens/change_password_screen.dart';
import '../screens/edit_profile_screen.dart';
import '../screens/filter_screen.dart';
import '../screens/find_friends_screen.dart';
import '../screens/forgot_password_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/menu_photos_screen.dart';
import '../screens/new_review_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/preview_menu_photos.dart';
import '../screens/profile_screen.dart';
import '../screens/register_screen.dart';
import '../screens/restaurant_details_screen.dart';
import '../screens/review_rating_screen.dart';
import '../screens/root_screen.dart';
import '../screens/search_results.dart';
import '../screens/set_location_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/trending_restaurant_screen.dart';

//@MaterialAutoRouter()
//@CustomAutoRouter(transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 200)

@CupertinoAutoRouter()
class $Router {
  @initial
  @CustomAutoRouter(
      transitionsBuilder: TransitionsBuilders.slideRight,
      durationInMilliseconds: 2000)
  LoginScreen loginScreen;

  @CustomAutoRouter(
      transitionsBuilder: TransitionsBuilders.slideRight,
      durationInMilliseconds: 2000)
  SplashScreen splashScreen;

  ForgotPasswordScreen forgotPasswordScreen;

  @MaterialRoute()
  RegisterScreen registerScreen;

  SetLocationScreen setLocationScreen;

  HomeScreen homeScreen;

  RootScreen rootScreen;

  ProfileScreen profileScreen;

  NotificationsScreen notificationsScreen;

  TrendingRestaurantsScreen trendingRestaurantsScreen;
  RestaurantDetailsScreen restaurantDetailsScreen;
  BookmarksScreen bookmarksScreen;

  FilterScreen filterScreen;
  SearchResultsScreen searchResultsScreen;
  ReviewRatingScreen reviewRatingScreen;

  AddRatingsScreen addRatingsScreen;
  MenuPhotosScreen menuPhotosScreen;
  PreviewMenuPhotosScreen previewMenuPhotosScreen;
  CategoriesScreen categoriesScreen;

  CategoryDetailScreen categoryDetailScreen;
  FindFriendsScreen findFriendsScreen;
  SettingsScreen settingsScreen;
  ChangePasswordScreen changePasswordScreen;

  ChangeLanguageScreen changeLanguageScreen;
  EditProfileScreen editProfileScreen;
  NewReviewScreen newReviewScreen;
}

class SearchValue {
  final String value;

  SearchValue(this.value);
}

class RestaurantDetails {
  final String imagePath;
  final String restaurantName;
  final String restaurantAddress;
  final String category;
  final String distance;
  final String rating;

  RestaurantDetails({
    @required this.imagePath,
    @required this.restaurantName,
    @required this.restaurantAddress,
    @required this.category,
    @required this.distance,
    @required this.rating,
  });
}

class CurrentScreen {
  final Widget currentScreen;
  final int tabNo;

  CurrentScreen({
    @required this.tabNo,
    @required this.currentScreen,
  });
}
